class CreateItemVintages < ActiveRecord::Migration
  def change
    create_table(:item_vintages, id: :uuid) do |t|
      t.integer :year

      t.timestamps
    end
  end
end
