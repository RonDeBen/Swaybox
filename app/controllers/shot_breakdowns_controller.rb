class ShotBreakdownsController < ApplicationController
  before_filter :authorize
  before_action :set_shot_breakdown, only: [:show, :edit, :update, :destroy]

  # GET /shot_breakdowns
  # GET /shot_breakdowns.json
  def index
    @shot_breakdowns = ShotBreakdown.all
  end

  # GET /shot_breakdowns/1
  # GET /shot_breakdowns/1.json
  def show
    @shot_breakdown = ShotBreakdown.find(params[:id])
    @layers = Layer.where(shot_breakdown_id: @shot_breakdown.id)
    @complete_wide_puppets = []
    @complete_mc_puppets = [] 
    @complete_props = []
    @incomplete_wide_puppets = []
    @incomplete_mc_puppets = [] 
    @incomplete_props = []
    @layers.each do |layer|
      @complete_wide_puppets << layer.wide_puppets.where(id: WideStatus.find_by(stage: 'Completed').id) unless layer.wide_puppets.where(id: WideStatus.find_by(stage: 'Completed').id.blank?) 
      @complete_mc_puppets << layer.mc_puppets.where(id: McStatus.find_by(stage: 'Completed').id) unless layer.mc_puppets.where(id: McStatus.find_by(stage: 'Completed').id).blank?  
      @complete_props << layer.props.where(id: RegStatus.find_by(stage: 'Completed').id) unless layer.props.where(id: RegStatus.find_by(stage: 'Completed').id).blank?  
      @incomplete_wide_puppets << layer.wide_puppets.where.not(id: WideStatus.find_by(stage: 'Completed').id) unless layer.wide_puppets.where.not(id: WideStatus.find_by(stage: 'Completed').id).blank?  
      @incomplete_mc_puppets << layer.mc_puppets.where.not(id: McStatus.find_by(stage: 'Completed').id) unless layer.mc_puppets.where.not(id: McStatus.find_by(stage: 'Completed').id).blank?  
      @incomplete_props << layer.props.where.not(id: RegStatus.find_by(stage: 'Completed').id) unless layer.props.where.not(id: RegStatus.find_by(stage: 'Completed').id).blank?  
    end
  end

  # GET /shot_breakdowns/new
  def new
    @shot_breakdown = ShotBreakdown.new
  end

  # GET /shot_breakdowns/1/edit
  def edit
    @shot_breakdown = ShotBreakdown.find(params[:id])
    @layers = Layer.where(shot_breakdown_id: @shot_breakdown.id)
  end

  def add_layer
    @shot_breakdown = ShotBreakdown.find(params[:id])
    @layer = Layer.create(shot_breakdown_id: @shot_breakdown.id)
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
      params.require(:shot_breakdown).permit(:title, :set, :description, { layers_attributes: [:title, :seconds, :takes, :transition, :cam, :difficulty, { wide_puppets_attributes: [:id, :_destroy] }, { mc_puppets_attributes: [:id, :_destroy] }, :play_option, { props_attributes: [:id, :_destroy] }, :wardrobe, :tracking, :pcolor, :notes, :id, :_destroy] }, :id)
    end
end
