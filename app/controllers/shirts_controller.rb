class ShirtsController < ApplicationController
  before_action :authenticated_only, only: [:new, :create]
  def index
    @shirts = Shirt.all
  end

  def show
    # params = {id: 1}
    @shirt = Shirt.find(params[:id])
  end

  def new
    @shirt = Shirt.new
  end

  def create
    shirt = Shirt.create(shirt_params)
    redirect_to shirt
  end

  private

  def shirt_params
    params.require(:shirt).permit(:name, :source_url, :image_url, :tag_ids => [])
  end
end
