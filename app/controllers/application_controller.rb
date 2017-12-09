class ApplicationController < ActionController::Base
  # include permissions
  include Pundit
  # after_action :verify_authorized

  protect_from_forgery with: :exception

  before_action :configure_devise_parameters, if: :devise_controller?
  
  def configure_devise_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:username, :email, :password, :password_confirmation, :current_password, :avatar) }
  end

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  
   private
  
     def user_not_authorized
       flash[:warning] = "You are not authorized to perform this action."
       redirect_to(request.referrer || root_path)
     end
 
end
