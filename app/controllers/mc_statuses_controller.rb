class McStatusesController < ApplicationController
  before_filter :authorize
  before_action :set_mc_status, only: [:show, :edit, :update, :destroy]

  # GET /mc_statuses
  # GET /mc_statuses.json
  def index
    @mc_statuses = McStatus.all
  end

  # GET /mc_statuses/1
  # GET /mc_statuses/1.json
  def show
  end

  # GET /mc_statuses/new
  def new
    @mc_status = McStatus.new
  end

  # GET /mc_statuses/1/edit
  def edit
  end

  # POST /mc_statuses
  # POST /mc_statuses.json
  def create
    @mc_status = McStatus.new(mc_status_params)

    respond_to do |format|
      if @mc_status.save
        format.html { redirect_to action: "index", notice: 'Mc status was successfully created.' }
        format.json { render :show, status: :created, location: @mc_status }
      else
        format.html { render :new }
        format.json { render json: @mc_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mc_statuses/1
  # PATCH/PUT /mc_statuses/1.json
  def update
    respond_to do |format|
      if @mc_status.update(mc_status_params)
        format.html { redirect_to action: "index", notice: 'Mc status was successfully updated.' }
        format.json { render :show, status: :ok, location: @mc_status }
      else
        format.html { render :edit }
        format.json { render json: @mc_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mc_statuses/1
  # DELETE /mc_statuses/1.json
  def destroy
    @mc_status.destroy
    respond_to do |format|
      format.html { redirect_to mc_statuses_url, notice: 'Mc status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mc_status
      @mc_status = McStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mc_status_params
      params.require(:mc_status).permit(:stage, [:id])
    end
end
