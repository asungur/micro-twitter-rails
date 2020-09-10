class UsersController < ApplicationController

  # SHOW USER PAGE
  def show
    @user = User.find(params[:id])
    # debugger
  end

  # SIGNUP FORM
  def new
    @user = User.new
  end

  # SUBMIT FORM
  def create
    @user = User.new(user_params)
    if @user.save
      # Handle a successful save.
    else
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation)
  end
end

