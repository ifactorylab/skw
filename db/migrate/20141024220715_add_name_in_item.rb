class AddNameInItem < ActiveRecord::Migration
  def change
    add_column :items, :name, :string, null: false, default: ""
  end
end
