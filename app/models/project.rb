class Project < ActiveRecord::Base
  attr_accessible :description, :name, :project_url, :status, :user_id
  belongs_to :user
end
