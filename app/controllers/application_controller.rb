class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  helper_method :is_admin?

  protected

  def authorize
  	unless is_admin?
  		flash[:danger] = "unauthorized access"
  		redirect_to root_path
  		false
  	end
  end

  def is_admin?
  	current_user.admin
  end
end
