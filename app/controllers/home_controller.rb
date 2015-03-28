class HomeController < ApplicationController

  def index
    @search = Search.new
    @outfits = Outfit.all
  end
end
