class RegStatusesController < ApplicationController
  before_filter :authorize
  before_action :set_reg_status, only: [:show, :edit, :update, :destroy]

  # GET /reg_statuses
  # GET /reg_statuses.json
  def index
    @reg_statuses = RegStatus.all
  end

  # GET /reg_statuses/1
  # GET /reg_statuses/1.json
  def show
  end

  # GET /reg_statuses/new
  def new
    @reg_status = RegStatus.new
  end

  # GET /reg_statuses/1/edit
  def edit
  end

  # POST /reg_statuses
  # POST /reg_statuses.json
  def create
    @reg_status = RegStatus.new(reg_status_params)

    respond_to do |format|
      if @reg_status.save
        format.html { redirect_to action: "index", notice: 'Reg status was successfully created.' }
        format.json { render :show, status: :created, location: @reg_status }
      else
        format.html { render :new }
        format.json { render json: @reg_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reg_statuses/1
  # PATCH/PUT /reg_statuses/1.json
  def update
    respond_to do |format|
      if @reg_status.update(reg_status_params)
        format.html { redirect_to action: "index", notice: 'Reg status was successfully updated.' }
        format.json { render :show, status: :ok, location: @reg_status }
      else
        format.html { render :edit }
        format.json { render json: @reg_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reg_statuses/1
  # DELETE /reg_statuses/1.json
  def destroy
    @reg_status.destroy
    respond_to do |format|
      format.html { redirect_to reg_statuses_url, notice: 'Reg status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reg_status
      @reg_status = RegStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reg_status_params
      params.require(:reg_status).permit(:stage, [:id])
    end
end
