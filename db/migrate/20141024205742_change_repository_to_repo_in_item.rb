class ChangeRepositoryToRepoInItem < ActiveRecord::Migration
  def change
    remove_column :items, :repository_id
    add_column :items, :repo_id, :string, null: false
  end
end
