class BooksController < ApplicationController
  
  def new
    @book = Book.new
  end


  def index
    
  end

  def show
     @newbook = Book.new
    @book = Book.find(params[:id])
    @user = @book.user
    
  end
 
  def edit
     @user = User.find(params[:id])
    
  end

  def create
   @book = Book.new(book_params)
     @book.save
      flash[:notice]="You have creatad book successfully."
      redirect_to book_path(@book)
    
  end


  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
  end

  
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
  
  
  def user_params
    params.require(:user).permit(:name, :image, :caption)
  end
end 
