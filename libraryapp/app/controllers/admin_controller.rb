class AdminController < ApplicationController
  skip_before_filter :verify_authenticity_token


  def index
    if session[:admin_id] != nil
      redirect_to admin_path(Admin.find(session[:admin_id]))
    else
      @admin = Admin.new
    end
  end

  def create
    @admin = Admin.new(admin_params)


    if @admin.save
      session[:admin] = @admin.id
      redirect_to admin_path(@admin.id)
    else
      redirect_to root_url
    end
  end

  def show
    @admin = Admin.find(session[:admin_id])
  end

  def new
    @admin = Admin.new(admin_params)
  end


  private

  def admin_params
    params.require(:admin).permit(:email, :password)
  end

end