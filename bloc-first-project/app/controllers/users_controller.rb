class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:show]
  
  def show
    if current_user
      @user_items = current_user.items
    end
  end

  def update
    if current_user.update_attributes(user_params)
      flash[:notice] = "User info updated"
      redirect_to edit_user_registration_path
    else
      flash[:error] = "Invalid user info"
      redirect_to edit_user_registration_path
    end
  end


  private

  def user_params
    params.require(:user).permit(:name)
  end
end
