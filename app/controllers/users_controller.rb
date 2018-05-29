class UsersController < Clearance::UsersController

  private

  def user_params
    params[:user].permit(:username, :password, :email, :email_confirmation)
  end
end