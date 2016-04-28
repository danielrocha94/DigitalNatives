class UsersController < ApplicationController
  def index
    @users = User.all
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      respond_to do |format|
      format.html {redirect_to root_path}
      format.js
      end
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :status, :role_id)
  end
end
