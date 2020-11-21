class AdminsController < ApplicationController
  def new
    @user = Admin.new
  end

  def create
    @user = Admin.create(params.require(:admin).permit(:username,:password))
    session[:admin_id] = @user.id
    redirect_to '/welcome'
  end

  def dashboard
    @messages = Message.all
  end

  def hide_message
    @message = Message.find_by(id: params[:param])
    !@message.hidden_status 
    format.html { redirect_to dashboard_path, notice: 'Message view status has been successfully updated.' }
    #respond to js 
  end
  
  
end
