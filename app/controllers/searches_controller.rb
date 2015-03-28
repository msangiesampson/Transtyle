class SearchesController < ApplicationController
  def create
    @outfits = Outfit.where shape_id: search_params[:shape_id]
    render 'outfits/index'
  end

  private
  def search_params
    params.require(:search).permit(:shape_id)
  end
end

