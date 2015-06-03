require 'Date'

class SendText

	def get_date
		@date = DateTime.now.to_date
	end

	def user_due_date
		@users = User.all
		@user_books = @users.books.where(checked_out?: true)
		@user_due_date = @users.checkouts.where(due_date: get_date).pluck(:user_id, :book_id)		
	end

	def send_text

		sid = 'AC015b2287604a70f0e13bb96bc2179f59'
	 	token = '4e93d70cf30464dd672d2aac869938ea'

	 # Instantiate a Twilio client
	 	client = Twilio::REST::Client.new(sid, token)
	 	from = '+113144417029'


	 	@user_due_date.each do |i|
	 		i.each do |info|
	 			user = User.find(info)
	 			book = Book.find(info)
	 			# Create and send an SMS message
	  			client.account.messages.create(
	  	 			:from => from,
	  	 			:to => user.phone,
	  	 			:body => "Hi, #{user.name}, #{book.title} is due today."
				)
	  		end
		end
	end
end