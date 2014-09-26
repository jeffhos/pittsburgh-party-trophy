class HomeController < ApplicationController
  def index
    @parties = Party.recent
  end

  def new
    @party = Party.new
  end

  def create
    @party = Party.new(params[:party])
    if @party.save
      redirect_to :index, notice: 'Party was successfully created.'
    else
      render action: "new"
    end
  end

  def about

  end
end
