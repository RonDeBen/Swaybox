class ShotBreakdownsController < ApplicationController
  before_action :set_shot_breakdown, only: [:show, :edit, :update, :destroy]

  # GET /shot_breakdowns
  # GET /shot_breakdowns.json
  def index
    @shot_breakdowns = ShotBreakdown.all
  end

  # GET /shot_breakdowns/1
  # GET /shot_breakdowns/1.json
  def show
  end

  # GET /shot_breakdowns/new
  def new
    @shot_breakdown = ShotBreakdown.new
  end

  # GET /shot_breakdowns/1/edit
  def edit
  end

  # POST /shot_breakdowns
  # POST /shot_breakdowns.json
  def create
    @shot_breakdown = ShotBreakdown.new(shot_breakdown_params)

    respond_to do |format|
      if @shot_breakdown.save
        format.html { redirect_to @shot_breakdown, notice: 'Shot breakdown was successfully created.' }
        format.json { render :show, status: :created, location: @shot_breakdown }
      else
        format.html { render :new }
        format.json { render json: @shot_breakdown.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shot_breakdowns/1
  # PATCH/PUT /shot_breakdowns/1.json
  def update
    respond_to do |format|
      if @shot_breakdown.update(shot_breakdown_params)
        format.html { redirect_to @shot_breakdown, notice: 'Shot breakdown was successfully updated.' }
        format.json { render :show, status: :ok, location: @shot_breakdown }
      else
        format.html { render :edit }
        format.json { render json: @shot_breakdown.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shot_breakdowns/1
  # DELETE /shot_breakdowns/1.json
  def destroy
    @shot_breakdown.destroy
    respond_to do |format|
      format.html { redirect_to shot_breakdowns_url, notice: 'Shot breakdown was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shot_breakdown
      @shot_breakdown = ShotBreakdown.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shot_breakdown_params
      params[:shot_breakdown]
    end
end
