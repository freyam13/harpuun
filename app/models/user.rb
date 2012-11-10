class User < ActiveRecord::Base
  attr_accessible :avatar_url, :email, :first_name, :last_name, :password, :password_confirmation, :password_digest, :status, :type

has_secure_password

end
