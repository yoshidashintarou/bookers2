class UsersController < ApplicationController
   
  def show
    @user = User.find(params[:id])
    
    @book = Book.find(params[:id])
  end

 def new
    @user = User.new
 end
 
 

 def index
   @user = User.all
 end
 
 def create
  user = User.new(list_params)
  
  user.save
  
  redirect_to edit_user_path
 end
 
 
 
 private
  def users_params
    params.require(:users).permit(:title, :body, :image)  
  end
end
