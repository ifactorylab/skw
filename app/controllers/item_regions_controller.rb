class ItemRegionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_item_region, only: [:show, :edit, :update, :destroy]
  respond_to :html

  def index
    @item_regions = ItemRegion.all
    respond_with(@item_regions)
  end

  def show
    respond_with(@item_region)
  end

  def new
    @item_region = ItemRegion.new
    respond_with(@item_region)
  end

  def edit
  end

  def create
    @item_region = ItemRegion.new(item_region_params)
    @item_region.save
    respond_with(@item_region)
  end

  def update
    @item_region.update(item_region_params)
    respond_with(@item_region)
  end

  def destroy
    @item_region.destroy
    respond_with(@item_region)
  end

  private
    def set_item_region
      @item_region = ItemRegion.find(params[:id])
    end

    def item_region_params
      params.require(:item_region).permit(:country, :region, :level)
    end
end
