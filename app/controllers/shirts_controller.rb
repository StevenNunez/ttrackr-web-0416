class ShirtsController < ApplicationController
  def index
    @shirts = Shirt.all
  end

  def show
    # params = {id: 1}
    @shirt = Shirt.find(params[:id])
  end
end
