class CreateShots < ActiveRecord::Migration
  def change
    create_table :shots do |t|
      t.string :caption
      t.string :picture_url
      t.string :user_id
      t.string :project_id

      t.timestamps
    end
  end
end
