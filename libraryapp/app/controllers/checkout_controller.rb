class CheckoutController < ApplicationController
  
	def new_checkout
		@user = User.find_by(session[:user_id])
    	@book = Book.find_by(params[:id])
    	@checkout = Checkout.create(:user_id => @user.id, :book_id => @book.id)

    	if @checkout.save
            @book.update(checked_out?: true)
    		respond_to do |format|
    		  format.html {redirect_to user_path(session[:user_id])}
    	    end
        else    
    		flash[:notice] = "Book was not checked out, please try again"
    		redirect_to book_path(@book) 
    	end
	end

    def show
        redirect_to()
    end


    private

    def checkout_params
        params.require(:checkout).permit(:user_id, :book_id, :start_date, :due_date)
    end

end
