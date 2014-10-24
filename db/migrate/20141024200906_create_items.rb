class CreateItems < ActiveRecord::Migration
  def change
    create_table(:items, id: :uuid) do |t|
      t.string :repository_id
      t.string :item_type_id
      t.string :item_region_id
      t.string :item_size_id
      t.integer :item_count, null: false, default: 0

      t.timestamps
    end
  end
end
