class LoginController < ApplicationController

  def get_users
    @users = User.all
  end

  def submit
      #set the user, go to new or view page
     user = User.find(params[:user_id])
     session[:user_id] = user.id
     redirect_to user_landing_path
  end

  def confirmed
  #i dont think i need to do anything here
  end

end
