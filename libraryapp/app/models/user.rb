class User < ActiveRecord::Base
  attr_accessible :email, :username, :password

  has_many :checkouts
  has_many :books, through: :checkouts
  has_secure_password
  validates :username, presence: true
  validates :password, :length => {:minimum => 6}

end