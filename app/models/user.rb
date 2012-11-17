class User < ActiveRecord::Base
  
  attr_accessible :avatar_url, :email, :first_name, :last_name, :password, :password_confirmation, :password_digest, :status, :type, :admin
  has_many :projects
  has_many :shots, :through => :projects

  has_secure_password
  
  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email

end
