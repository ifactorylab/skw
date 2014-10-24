class Item < ActiveRecord::Base
  def repo
    @repo ||= Repo.find(repo_id)
  end

  def type
    @item_type ||= ItemType.find(item_type_id)
  end

  def size
    @item_size ||= ItemSize.find(item_size_id)
  end

  def region
    @item_region ||= ItemRegion.find(item_region_id)
  end

  def vintage
    @item_vintage ||= ItemVintage.find(vintage_id)
  end
end
