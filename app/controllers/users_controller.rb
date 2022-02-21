class UsersController < ApplicationController
   
 def show
    @user = User.find(params[:id])
    
 end

 def new
    @user = User.new
 end
 
 
 def create
    user = User.new(users_params)
    user.save
    redirect_to 'book_path'
 end
 
 def index
   @user = User.all
 end
end
