class User < ActiveRecord::Base
  attr_accessible :email, :username, :phone, :password
  has_secure_password
  validates :username, presence: true
  validates :password, :length => {:minimum => 6}

end