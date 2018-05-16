class UsersController < ApplicationController
  def show
    @user = User.new
  end

  def edit
  end

  def update
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

  private

    def user_params
      params.require(:user).permit(:name)
    end

    def set_user
      @user = User.find(params[:id])
    end
end
