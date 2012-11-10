class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :desc
      t.string :status
      t.string :project_url
      t.string :user_id
      t.string :shot_id

      t.timestamps
    end
  end
end
