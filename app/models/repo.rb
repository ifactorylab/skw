class Repo < ActiveRecord::Base
  has_many :items

  def items_count
    items.sum("item_count")
  end
end
