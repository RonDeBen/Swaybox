class WideStatusesController < ApplicationController
  before_action :set_wide_status, only: [:show, :edit, :update, :destroy]

  # GET /wide_statuses
  # GET /wide_statuses.json
  def index
    @wide_statuses = WideStatus.all
  end

  # GET /wide_statuses/1
  # GET /wide_statuses/1.json
  def show
  end

  # GET /wide_statuses/new
  def new
    @wide_status = WideStatus.new
  end

  # GET /wide_statuses/1/edit
  def edit
  end

  # POST /wide_statuses
  # POST /wide_statuses.json
  def create
    @wide_status = WideStatus.new(wide_status_params)

    respond_to do |format|
      if @wide_status.save
        format.html { redirect_to @wide_status, notice: 'Wide status was successfully created.' }
        format.json { render :show, status: :created, location: @wide_status }
      else
        format.html { render :new }
        format.json { render json: @wide_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wide_statuses/1
  # PATCH/PUT /wide_statuses/1.json
  def update
    respond_to do |format|
      if @wide_status.update(wide_status_params)
        format.html { redirect_to @wide_status, notice: 'Wide status was successfully updated.' }
        format.json { render :show, status: :ok, location: @wide_status }
      else
        format.html { render :edit }
        format.json { render json: @wide_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wide_statuses/1
  # DELETE /wide_statuses/1.json
  def destroy
    @wide_status.destroy
    respond_to do |format|
      format.html { redirect_to wide_statuses_url, notice: 'Wide status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wide_status
      @wide_status = WideStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wide_status_params
      params.require(:wide_status).permit(:stage, [:id])
    end
end
