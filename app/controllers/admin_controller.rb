class AdminController < ApplicationController
  before_filter :authorize
  #before_filter :blah

  def index
    @parties = Party.where(:approved => false)
  end

  def approve
    party = Party.find(params[:id])
    party.approved = true
    party.save!
    redirect_to :action => :index
  end

  def delete
    Party.destroy(params[:id])
    redirect_to :action => :index
  end

  private
  def blah
    redirect_to parties_path
  end
end
