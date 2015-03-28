class Admin::OccasionsController < ApplicationController
  def new
    @occasion = Occasion.new
  end

  def index
  end

  def create
    occasion = Occasion.new(occasion_params)
    occasion.save

    redirect_to root_path
  end

  private
  def occasion_params
    params.require(:occasion).permit(:name, :description)
  end
end
