class UserController < ApplicationController

  skip_before_filter :verify_authenticity_token


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
  end

  def new
    @user = User.new(user_params)
  end


  private

  def user_params
    params.require(:user).permit(:username,:email, :password, :password_confirmation)
  end
end
