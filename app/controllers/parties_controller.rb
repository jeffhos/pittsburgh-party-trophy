class PartiesController < ApplicationController

  def index
    @parties = Party.where(:approved => true).order('happened_on DESC').page(params[:page]).per(5)
  end

  def show
    @party = Party.find(params[:id])
  end

  def new
    @party = Party.new
  end

  def create
    @party = Party.new(party_params)

    if @party.save
      send_notifications(@party)
      redirect_to :controller => :home, :action => :thanks
    else
      render :action => 'new'
    end
  end

  private
  def send_notifications(party)
    User.all.each do |user|
      NotificationMailer.party_entered(party, user).deliver
    end
  end

  def party_params
    params.require(:party).permit(:name, :happened_on, :description, :image1, :image2, :image3)
  end

end
