class Book < ActiveRecord::Base
  attr_accessible :title, :author, :genre, :checked_out?

  has_many :checkouts
  has_many :users

end
