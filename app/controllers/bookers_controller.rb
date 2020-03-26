class BookersController < ApplicationController
  def index
    @book = Book.new
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
  end

  def edit
    @books = Book.find(params[:id])
  end
  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "Book was successfully created."
      redirect_to book_path(@book.id)
    else
      @books = Book.all
      render :index
    end
  end

  def destroy
  	 @book = Book.find(params[:id])
  	 @book.destroy
  	 redirect_to books_path

  end
  def update
  	 book = Book.find(params[:id])
     book.update(book_params)
     flash[:notice] = "Book was successfully update."
     redirect_to book_path(book.id)
  end
 private

  def book_params
  	#requireの引数に関しては、モデル名の小文字を書く
  	params.require(:book).permit(:title, :body)

  end

end