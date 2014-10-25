class HomeController < ApplicationController
  def index
    @parties = Party.recent
  end

  def about
  end

  def thanks
  end

  def contact
  end
end
