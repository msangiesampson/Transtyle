class Admin::ColoursController < ApplicationController
  def new
    @colour = Colour.new
  end

  def index
  end

  def create
    colour = Colour.new(colour_params)
    colour.save
    redirect_to root_path
  end

  private
  def colour_params
    params.require(:colour).permit(:name, :colour)
  end
end
