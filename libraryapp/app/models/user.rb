class User < ActiveRecord::Base
  has_many :books, through: :checkouts
  attr_accessible :email, :username, :password
  has_secure_password
  validates :username, presence: true
  validates :password, :length => {:minimum => 6}

end