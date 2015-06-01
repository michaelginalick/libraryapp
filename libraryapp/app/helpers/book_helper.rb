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
        if @book.checked_out? == true
            if @user_checkouts.length > 0
                return due_date
            else
                return "This book is currently checked out"
            end    
        else 
            return start_date + " " + due_date
        end  
    end
end


