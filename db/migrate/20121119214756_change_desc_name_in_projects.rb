class ChangeDescNameInProjects < ActiveRecord::Migration
  def change
    rename_column :projects, :desc, :description
  end
end
