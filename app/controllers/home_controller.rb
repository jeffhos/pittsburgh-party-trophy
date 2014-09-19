class HomeController < ApplicationController
  def index
    @parties = Party.recent
  end
end
