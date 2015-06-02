require 'Date'

class SendText







	def get_date
		@date = DateTime.now.to_date
	end

	def user_due_date
		@users = User.all
		@user_books = @users.books.where(checked_out?: true)
		@user_due_date = @users.checkouts.where(due_date: @date)		
	end


	def get_user_number
		@name_number = []
		@user_due_date.each do |user|
			numbers << user.name << user.number
		end
		@name_number
	end

	def get_book_title
		@book_title = []
		@user_books.each do |book|
			@book_title << book
		end
		@book_title
	end


	def send_text
		number = 1
		(@name_number.length-2).times do |name|

			sid = 'AC015b2287604a70f0e13bb96bc2179f59'
	     	token = '4e93d70cf30464dd672d2aac869938ea'

	     # Instantiate a Twilio client
	     	client = Twilio::REST::Client.new(sid, token)
	     	from = '+113144417029'

	     # Create and send an SMS message
	      	client.account.messages.create(
	      	 :from => from,
	      	 :to => name[number],
	      	 :body => "Hi, #{name}, #{book_title[number]} is due today."
	    )

		end
	end



end