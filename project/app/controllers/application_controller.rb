class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
    before_action :configure_permitted_parameters, if: :devise_controller?




    protected

	  def configure_permitted_parameters
	    param = [:username,:pic, :dob, :gender, :email, :password, :password_confirmation, :remember_me]
	    devise_parameter_sanitizer.permit :sign_up, keys: param
	    devise_parameter_sanitizer.permit :account_update, keys: param
	  end


  # # protect_from_forgery with: :exception
  #  protected

  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :pic, :gender, :email, :password, :password_confirmation, :remember_me])
  # 	# devise_parameter_sanitizer.permit :account_update, keys: [:username, :pic, :gender, :email, :password, :password_confirmation, :remember_me])
  # end



end
