class McPuppetsController < ApplicationController
  before_filter :authorize
  before_action :set_mc_puppet, only: [:show, :edit, :update, :destroy]

  # GET /mc_puppets
  # GET /mc_puppets.json
  def index
    @mc_puppets = McPuppet.all
  end

  # GET /mc_puppets/1
  # GET /mc_puppets/1.json
  def show
  end

  # GET /mc_puppets/new
  def new
    @mc_puppet = McPuppet.new
  end

  # GET /mc_puppets/1/edit
  def edit
  end

  # POST /mc_puppets
  # POST /mc_puppets.json
  def create
    @mc_puppet = McPuppet.new(mc_puppet_params)

    respond_to do |format|
      if @mc_puppet.save
        format.html { redirect_to action: "index", notice: 'Mc puppet was successfully created.' }
        format.json { render :show, status: :created, location: @mc_puppet }
      else
        format.html { render :new }
        format.json { render json: @mc_puppet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mc_puppets/1
  # PATCH/PUT /mc_puppets/1.json
  def update
    respond_to do |format|
      if @mc_puppet.update(mc_puppet_params)
        format.html { redirect_to action: "index", notice: 'Mc puppet was successfully updated.' }
        format.json { render :show, status: :ok, location: @mc_puppet }
      else
        format.html { render :edit }
        format.json { render json: @mc_puppet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mc_puppets/1
  # DELETE /mc_puppets/1.json
  def destroy
    @mc_puppet.destroy
    respond_to do |format|
      format.html { redirect_to mc_puppets_url, notice: 'Mc puppet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mc_puppet
      @mc_puppet = McPuppet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mc_puppet_params
      params.require(:mc_puppet).permit(:name, :status, [:id])
    end
end
