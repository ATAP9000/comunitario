class UsersController < ApplicationController
  	before_action :authenticate_user
  	before_action :authenticate_admin
  	
  def index
  	@users = User.all_except(current_user)
  end
  
  def create
  super
  end
  
   def destroy
    @users = User.find(params[:id])
    @users.destroy
    redirect_to root_url, notice: "User deleted."
  end
  
  
protected

def authenticate_user
return unless !user_signed_in?
redirect_to root_path
end

def authenticate_admin
	return unless !current_user.admin?
    redirect_to root_path
end

end
