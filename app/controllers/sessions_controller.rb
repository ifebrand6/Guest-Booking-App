class SessionsController < ApplicationController
  def new
    @user = Admin.new
  end

  def create
    @user = Admin.find_by(username: 
    params[:username]
    )
    if @user && @user.aunthenticate(params[:password])
        session["user_id"] = @user.id  
        redirect_to '/welcome'  
    else
      redirect_to '/login'
    end
    
  end

  def login
  end

  def welcome
  end
end
