class ItemTypesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_item_type, only: [:show, :edit, :update, :destroy]
  respond_to :html

  def index
    @item_types = ItemType.all
    respond_with(@item_types)
  end

  def show
    respond_with(@item_type)
  end

  def new
    @item_type = ItemType.new
    respond_with(@item_type)
  end

  def edit
  end

  def create
    @item_type = ItemType.new(item_type_params)
    @item_type.save
    respond_with(@item_type)
  end

  def update
    @item_type.update(item_type_params)
    respond_with(@item_type)
  end

  def destroy
    @item_type.destroy
    respond_with(@item_type)
  end

  private
    def set_item_type
      @item_type = ItemType.find(params[:id])
    end

    def item_type_params
      params.require(:item_type).permit(:name)
    end
end
