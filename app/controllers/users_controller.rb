class UsersController < Clearance::UsersController

  private

  def user_params
    params[:user].permit(:username, :password, :email)
  end
end