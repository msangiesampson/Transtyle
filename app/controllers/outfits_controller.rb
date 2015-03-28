class OutfitsController < ApplicationController
  def index
    @outfits = Outfit.all

  end

  def new
    @outfit = Outfit.new
  end

  def create
    @outfit = Outfit.new(outfit_params)
    @outfit.save!
    redirect_to outfits_path
  end


  def outfit_params
    params.require(:outfit).permit(:name, :description, :shape_id, :garment_id, :occasion_id, :colour_id)
  end
end
