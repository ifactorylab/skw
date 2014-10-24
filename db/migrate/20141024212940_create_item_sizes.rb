class CreateItemSizes < ActiveRecord::Migration
  def change
    create_table(:item_sizes, id: :uuid) do |t|
      t.string :name
      t.integer :amount

      t.timestamps
    end
  end
end
