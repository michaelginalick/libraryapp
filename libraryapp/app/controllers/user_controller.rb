class UserController < ApplicationController

  skip_before_filter :verify_authenticity_token


  #As a user I want to
  #to be able to view all books
  #to be able to search for books
  #to be able to view an individual book
  #to be able to checkout a book
  #to be able to checkin a book I have checked out

  def index
    if session[:user_id] != nil
      redirect_to user_path(User.find(session[:user_id]))
    else
      @user = User.new
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user.id)
    else
      redirect_to root_url
    end
  end

  def show
    @user = User.find(session[:user_id])
    @books = Book.paginate(:page => params[:page], :per_page => 20)
    @user_checkouts = @user.checkouts
    
  end

  def new
    @user = User.new(user_params)
  end


  private

  def user_params
    params.require(:user).permit(:username,:email, :password, :password_confirmation)
  end
end
