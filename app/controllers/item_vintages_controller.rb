class ItemVintagesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_item_vintage, only: [:show, :edit, :update, :destroy]
  respond_to :html

  def index
    @item_vintages = ItemVintage.order(year: :asc)
    respond_with(@item_vintages)
  end

  def show
    respond_with(@item_vintage)
  end

  def new
    @item_vintage = ItemVintage.new
    respond_with(@item_vintage)
  end

  def edit
  end

  def create
    @item_vintage = ItemVintage.new(item_vintage_params)
    @item_vintage.save
    respond_with(@item_vintage)
  end

  def update
    @item_vintage.update(item_vintage_params)
    respond_with(@item_vintage)
  end

  def destroy
    @item_vintage.destroy
    respond_with(@item_vintage)
  end

  private

  def set_item_vintage
    @item_vintage = ItemVintage.find(params[:id])
  end

  def item_vintage_params
    params.require(:item_vintage).permit(:year)
  end
end
