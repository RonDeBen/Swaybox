class WidePuppetsController < ApplicationController
  before_filter :authorize
  before_action :set_wide_puppet, only: [:show, :edit, :update, :destroy]

  # GET /wide_puppets
  # GET /wide_puppets.json
  def index
    @wide_puppets = WidePuppet.all
  end

  # GET /wide_puppets/1
  # GET /wide_puppets/1.json
  def show
  end

  # GET /wide_puppets/new
  def new
    @wide_puppet = WidePuppet.new
  end

  def wide_puppet
    @wide_puppet = WidePuppet.new
  end
  # GET /wide_puppets/1/edit
  def edit
  end

  # POST /wide_puppets
  # POST /wide_puppets.json
  def create
    @wide_puppet = WidePuppet.new(wide_puppet_params)

    respond_to do |format|
      if @wide_puppet.save
        format.html { redirect_to action: "index", notice: 'Wide puppet was successfully created.' }
        format.json { render :show, status: :created, location: @wide_puppet }
      else
        format.html { render :new }
        format.json { render json: @wide_puppet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wide_puppets/1
  # PATCH/PUT /wide_puppets/1.json
  def update
    respond_to do |format|
      if @wide_puppet.update(wide_puppet_params)
        format.html { redirect_to @wide_puppet, notice: 'Wide puppet was successfully updated.' }
        format.json { render :show, status: :ok, location: @wide_puppet }
      else
        format.html { render :edit }
        format.json { render json: @wide_puppet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wide_puppets/1
  # DELETE /wide_puppets/1.json
  def destroy
    @wide_puppet.destroy
    respond_to do |format|
      format.html { redirect_to wide_puppets_url, notice: 'Wide puppet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wide_puppet
      @wide_puppet = WidePuppet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wide_puppet_params
      params.require(:wide_puppet).permit(:name, :status, [:id])
    end
end
