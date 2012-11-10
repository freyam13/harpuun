class Project < ActiveRecord::Base
  attr_accessible :desc, :name, :project_url, :shot_id, :status, :user_id
  has_many :users
  has_many :shots
end
