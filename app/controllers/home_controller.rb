class HomeController < ApplicationController
  def index
    @parties = Party.recent
  end

  def about
  end

  def thanks
  end
end
