class DashboardController < ApplicationController

  skip_before_filter :verify_authenticity_token

  def admin_login
    @admin = get_admin(params[:admin])
    if @admin && @admin.authenticate(params[:admin][:password])
      session[:admin_id] = @admin.id
      redirect_to admin_path(@admin.id)
    else
      flash[:notice] = "Invalid username or password"
      redirect_to root_path
    end
  end

  def admin_logout
    session.clear
    flash[:notice] = "See you next time."
    redirect_to root_path
  end



  def admin_book_view
    @book = Book.find(params[:book_id])
  end

  def admin_book_update
    @book = Book.find(params[:book_id])
    @book.update(params[:book])

    redirect_to admin_path(Admin.find(session[:admin_id]))
  end


  protected

  def get_admin(admin_params)
    Admin.find_by(email: admin_params[:email])
  end

end


