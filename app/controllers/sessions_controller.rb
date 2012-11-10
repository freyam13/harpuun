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
      redirect_to users_url(params[:id])
    else
      # redirect_to root_url, :notice => "Nice try!"
      render 'new'
    end
  end
end
