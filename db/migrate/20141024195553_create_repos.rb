class CreateRepos < ActiveRecord::Migration
  def change
    create_table(:repos, id: :uuid) do |t|
      t.string :user_id, null: false
      t.string :name, null: false, default: ""
      t.timestamps
    end
  end
end
