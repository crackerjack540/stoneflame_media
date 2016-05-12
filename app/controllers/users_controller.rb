class UsersController < ApplicationController

def new
  @user = User.new
 end

def create
  @user = user.new(params[:user])
  if @user.save
  	redirect_to '/', notice: "Thank you for signing up!"
  else 
  	render "new"
  end
end

end
