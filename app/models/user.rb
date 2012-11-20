class User < ActiveRecord::Base
  
  attr_accessible :avatar_url, :email, :first_name, :last_name, :password, :password_confirmation, :status, :type, :admin
  has_many :projects
  has_many :shots, :through => :projects

  has_secure_password
  
  validates_presence_of :email, :first_name, :last_name
  validates_uniqueness_of :email

end
