class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def current_user
  	if session[:id]
  		@current_user ||= Socio.find(session[:id])
  	end
  end
  helper_method :current_user

  def authenticate_user!
	redirect_to login_path unless current_user
  end
end
