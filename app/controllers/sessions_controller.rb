class SessionsController < ApplicationController
 
  def new
  
  end
  
  def create
  	user = User.find_by_username(params[:sessions][:username])
  	if user && user.authenticate(params[:sessions][:password])
  	session[:user_id] = user.id
  	redirect_to root_path, notice: "You are now logged in."
  else 
    redirect_to '/login', notice: "incorrect email or password! "
    end
  end

def destroy
	session[:user_id] = nil
  reset_session
	redirect_to root_path, notice: "logged out."
end

end
