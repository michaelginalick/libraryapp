

class BooksController < ApplicationController

  #book needs full crud functionality via the admin, not the user


  def index
     @user = User.find(session[:user_id])
     @books = Book.search(params[:search]).paginate(:page => params[:page], :per_page => 20)
     @user_search = Book.search(params[:search])
     @user_checkouts = @user.checkouts
  end

  def show
    @user = User.find(session[:user_id])
    @book = Book.find(params[:id])
    @book_id = @book.good_reads_id
    @user_checkouts = @user.books.where(id: @book.id, checked_out?: true).limit(1)
  end

 

  private

  def book_params
    params.require(:book).permit(:title, :author, :genre,:checked_out?)
  end
end
