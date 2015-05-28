class User < ActiveRecord::Base
  attr_accessible :email, :username, :password, :password_digest

  has_many :checkouts
  has_many :books, through: :checkouts
  has_secure_password
  validates :username, presence: true, uniqueness: true
  validates :password, :length => {:minimum => 6}
  validates :email, uniqueness: true
end