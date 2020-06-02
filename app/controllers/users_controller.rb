class UserController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user = current_user
    if @user.save!
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    set_user
  end

  def update
    if @user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    set_user
    @user.destroy
    redirect_to user_path, notice: 'User was successfully destroyed.'
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :encrypted_password, :first_name, :last_name, :price, :location, :username)
  end
end
