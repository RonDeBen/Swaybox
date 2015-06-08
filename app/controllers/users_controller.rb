class UsersController < ApplicationController
  before_filter :authorize, only: :index
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  include SessionsHelper

  def index
    @users = User.all
  end

  # def show
  # 	@user = User.find(params[:id])
  # end

  def new
  	@user = User.new
  end

  def edit
    @user = User.find(params[:id])
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

  def update
    respond_to do |format|
      if @user.update(user_params)
        if is_admin?
          format.html { redirect_to root_path, notice: "#{@user.name} was successfully updated." }
          format.json { render :show, status: :ok, location: @user }
        else
          format.html { redirect_to @user, notice: "#{@user.name} was successfully updated." }
          format.json { render :show, status: :ok, location: @user }
        end
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def login
  end

  private 

    def set_user
      @user = User.find(params[:id])
    end

	  def user_params
	      params.require(:user).permit(:name, :email, :password,:password_confirmation, :admin, [:id])
	  end
end
