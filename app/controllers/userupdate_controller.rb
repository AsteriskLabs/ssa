class UserupdateController < ApplicationController
  layout false
  
  def edit
    @user = current_user
    render :layout => false
  end

  def error
    render :layout => false
  end

  def update_pwd
    @user = User.find(current_user.id)
    if @user.update_with_password(params[:user])
      # Sign in the user by passing validation in case his password changed
      sign_in @user, :bypass => true
      redirect_to root_path
    else
      render "error"
    end
  end

  private

  def user_params
    params.required(:user).permit(:password, :password_confirmation, :current_password)
  end
end