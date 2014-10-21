class PartiesController < ApplicationController

  def index
    @parties = Party.all
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
      redirect_to controller: :home, action: :thanks
    else
      render action: "new"
    end
  end

end
