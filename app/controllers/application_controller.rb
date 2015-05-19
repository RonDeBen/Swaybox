class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  protected

  def authorize
  	unless is_admin?
  		flash[:danger] = "unauthorized access"
  		redirect_to root_path
  		false
  	end
  end

  def is_admin?
    if current_user == nil
      false
  	else
      current_user.admin
    end
  end
end
