class Admin::ColourController < ApplicationController
  def new
    @colour = Colour.new
  end

  def index
  end
end
