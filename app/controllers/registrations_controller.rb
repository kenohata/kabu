class RegistrationsController < ApplicationController
  def new
  end

  def create
    @user = User.new(params_user)

    if @user.save
      render :new
    else
      render :new, status: 400
    end
  end

  private

  def params_user
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
