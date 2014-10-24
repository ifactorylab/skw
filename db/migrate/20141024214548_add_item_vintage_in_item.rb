class AddItemVintageInItem < ActiveRecord::Migration
  def change
    add_column :items, :vintage_id, :string, null: false, default: ""
  end
end
