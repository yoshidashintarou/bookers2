class BooksController < ApplicationController
  
  def new
    @book = Book.new
  end


  def index
    
  end

  def show
    @book = Book.find(params[:id])
    @user = User.find(params[:id])
    
  end
 
  def edit
     @user = User.find(params[:id])
    
  end

  def create
    book = Book.new(list_params)
    
    book.save
    
    redirect_to book_path(@book)
  end


  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
  end

  
  # 投稿データのストロングパラメータ
  private

  def user_params
    params.require(:user).permit(:name, :image, :caption)
  end
end 
