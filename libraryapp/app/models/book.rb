class Book < ActiveRecord::Base
  attr_accessible :title, :author, :genre, :checked_out?

  has_many :checkouts
  has_many :users


	def self.search(search)
		if search
			where('title || author || genre LIKE ?', "%#{search}%")
		else
			all
		end
	end
	
end
