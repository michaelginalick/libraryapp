module BookHelper

	def start_date
        t = Time.now
        checkout_date = t.strftime('%A %B %d %Y')
        return "Checkout date is: " + checkout_date
    end

    def due_date
        t = (Time.now + 60.days)
        checkin_date = t.strftime('%A %B %d %Y')
        return "The due date is: " + checkin_date
    end

    def show_dates
        @book_checkouts.each do |checkout|
            if (checkout.user_id == @user.id && @book.checked_out? == true)
                return due_date
            else  
                return start_date + due_date
            end
        end 
    end




	
end


