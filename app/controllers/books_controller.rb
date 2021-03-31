class BooksController < ApplicationController
  def index
    @books = Book.all
    @user = User.find(current_user.id)
    @book = Book.new
  end

  def show
  end

  def new
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to books_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end
