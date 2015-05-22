module BookHelper

	def start_date
		t = Time.now
		checkout_date = t.strftime('%A %B %d %Y')
		return "Checkout date is: " + checkout_date
	end

	def due_date
		t = (Time.now + 60.days)
		checkin_date = t.strftime('%A %B %d %Y')
		return "The due date will be: " + checkin_date
	end

end


