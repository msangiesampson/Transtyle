class HomeController < ApplicationController
  def index
    @outfits = Outfit.all
  end
end
