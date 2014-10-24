class CreateItemRegions < ActiveRecord::Migration
  def change
    create_table(:item_regions, id: :uuid) do |t|
      t.string :country
      t.string :region
      t.string :level

      t.timestamps
    end
  end
end
