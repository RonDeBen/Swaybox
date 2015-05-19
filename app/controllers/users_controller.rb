class UsersController < ApplicationController
  before_filter :authorize_admin, only: :index
  include SessionsHelper
  def show
  	@user = User.find(params[:id])
  	#debugger
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		flash[:success] = "Welcome to Swaybox!"
  		redirect_to @user
  	else
  		render 'new'
  	end
  end

  def login
  end

  private 

	  def user_params
	      params.require(:user).permit(:name, :email, :password,:password_confirmation)
	  end
end
