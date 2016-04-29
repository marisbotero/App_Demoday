class UsersController < ApplicationController
	 

  def show
    @user = User.find_by_nickname(params[:nickname])
    redirect_to user_not_found_path if @user.nil?
  end

  def user_not_found
  end


end
