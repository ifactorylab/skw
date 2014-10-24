class ItemsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_repo, only: [:index]
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  before_action :set_repos, only: [:new, :edit]
  before_action :set_item_types, only: [:new, :edit]
  before_action :set_item_sizes, only: [:new, :edit]
  before_action :set_item_vintages, only: [:new, :edit]
  before_action :set_regions, only: [:new, :edit]
  respond_to :html

  def index
    @items = @repo.items
    respond_with(@items)
  end

  def show
    respond_with(@item)
  end

  def new
    @item = Item.new
    respond_with(@item)
  end

  def edit
  end

  def create
    @item = Item.new(item_params)
    @item.save
    respond_with(@item)
  end

  def update
    @item.update(item_params)
    respond_with(@item)
  end

  def destroy
    repo_id = @item.repo_id
    @item.destroy
    redirect_to "/repos/#{repo_id}/items"
  end

  private

  def set_item
    @item = Item.find(params[:id])
  end

  def set_repo
    @repo = Repo.find(params[:id])
  end

  def set_repos
    @repos = current_user.repos
  end

  def set_item_types
    @item_types = ItemType.all
  end

  def set_item_sizes
    @item_sizes = ItemSize.all
  end

  def set_item_vintages
    @item_vintages = ItemVintage.all
  end

  def set_regions
    @regions = Region.all
  end

  def item_params
    params.require(:item).permit(:repo_id,
                                 :item_type_id,
                                 :item_region_id,
                                 :item_size_id,
                                 :item_count,
                                 :vintage_id,
                                 :name)
  end
end
