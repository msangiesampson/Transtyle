class Admin::ShapesController < ApplicationController
  def new
    @shape = Shape.new
  end

  def index
  end

  def create
    shape = Shape.new(shape_params)
    shape.save

    redirect_to root_path
  end

  private
  def shape_params
    params.require(:shape).permit(:name, :avatar, :description)
  end
end
