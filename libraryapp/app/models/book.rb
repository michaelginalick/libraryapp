class Book < ActiveRecord::Base
  belongs_to :checkout
  belongs_to :user
end
