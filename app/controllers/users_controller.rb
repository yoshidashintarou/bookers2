class UsersController < ApplicationController
   
  def show
   @user = User.find(params[:id])
   @book = Book.new
  end
  
  def edit
   @user = User.find(params[:id])
   
  end
  
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to 
    
  end

 def new
    @user = User.new
 end
 
 
 

 def index
   @user = current_user
   @book = Book.new
   @books =Book.all
   @users = User.all
 end
 
 def create
  @user = User.new(user_params)
  @user.user_id = current_user.id
  @user.save
  redirect_to edit_user_path
 end
 
 
 
 private
  def user_params
    params.require(:user).permit(:name, :introduction, :image)  
  end
end

def book_params
    params.require(:book).permit(:title, :body)
end