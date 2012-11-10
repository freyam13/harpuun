class Shot < ActiveRecord::Base
  attr_accessible :caption, :picture_url, :project_id, :user_id
  belongs_to :project 
end
