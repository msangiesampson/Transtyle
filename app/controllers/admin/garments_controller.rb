class Admin::GarmentsController < ApplicationController
  def new
    @garment = Garment.new
  end

  def index
  end

  def create
    garment = Garment.new(garment_params)
    garment.save

    redirect_to root_path
  end

  private
  def garment_params
    params.require(:garment).permit(:name, :part, :description)
  end
end
