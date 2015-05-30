class BooksController < ApplicationController

  #book needs full crud functionality via the admin, not the user


  def index
    @user = User.find(session[:user_id])
     @books = Book.search(params[:search]).paginate(:page => params[:page], :per_page => 20)
     @user_checkouts = @user.checkouts
  end

  def show
    @user = User.find(session[:user_id])
    @book = Book.find(params[:id])
    @book_checkouts = @book.checkouts
    @user_checkouts = @user.checkouts
  end

  def update
    @book = Book.find(params[:id])
    @book.update(params[:book])
  end

  def delete
    @book = Book.find(params[:id])
    @book.destroy
  end

  def new_book
    @book = Book.create(params[:book])
  end

  def one_book
    @book = Book.find_by(params[:id])
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :genre,:checked_out?)
  end
end
