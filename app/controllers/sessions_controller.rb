class SessionsController < ApplicationController
  def new
    
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
  
  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user_url(session[:user_id])
    else
      redirect_to sign_in_url, :notice => "Invalid email address or password"      
      # render 'new'
    end
  end
end
