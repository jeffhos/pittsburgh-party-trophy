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
    @party = Party.new(params[:party])

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

end
