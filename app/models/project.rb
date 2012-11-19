class Project < ActiveRecord::Base
  attr_accessible :desc, :name, :project_url, :status, :user_id
  belongs_to :user
  has_many :shots
end
