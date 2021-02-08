class RegistroController < Devise::RegistrationsController
skip_before_action :require_no_authentication, only: [:new, :create]
before_action :authenticate_user
before_action :authenticate_admin

def new
	super
end

def create
  super
end

def delete
  super
end

  private
 def sign_up(resource_name, resource)
   true
 end
   
def authenticate_user
return unless !user_signed_in?
redirect_to root_path
end


def authenticate_admin
	return unless !current_user.admin?
    redirect_to root_path
end
  
end
