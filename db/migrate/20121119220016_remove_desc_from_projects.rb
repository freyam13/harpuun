class RemoveDescFromProjects < ActiveRecord::Migration
  def up
    remove_column :projects, :desc
  end

  def down
    add_column :projects, :desc   
  end
end
