class RemoveShotIdFromProjects < ActiveRecord::Migration
  def up
    remove_column :projects, :shot_id
  end

  def down
    add_column :projects, :shot_id, :string
  end
end
