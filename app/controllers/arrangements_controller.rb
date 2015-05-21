class ArrangementsController < ApplicationController
  before_action :set_arrangement, only: [:show, :edit, :update, :destroy]

  # GET /arrangements
  # GET /arrangements.json
  def index
    @arrangements = Arrangement.all
  end

  # GET /arrangements/1
  # GET /arrangements/1.json
  def show
  end

  # GET /arrangements/new
  def new
    @arrangement = Arrangement.new
  end

  # GET /arrangements/1/edit
  def edit
  end

  # POST /arrangements
  # POST /arrangements.json
  def create
    @arrangement = Arrangement.new(arrangement_params)

    respond_to do |format|
      if @arrangement.save
        format.html { redirect_to @arrangement, notice: 'Arrangement was successfully created.' }
        format.json { render :show, status: :created, location: @arrangement }
      else
        format.html { render :new }
        format.json { render json: @arrangement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /arrangements/1
  # PATCH/PUT /arrangements/1.json
  def update
    respond_to do |format|
      if @arrangement.update(arrangement_params)
        format.html { redirect_to @arrangement, notice: 'Arrangement was successfully updated.' }
        format.json { render :show, status: :ok, location: @arrangement }
      else
        format.html { render :edit }
        format.json { render json: @arrangement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /arrangements/1
  # DELETE /arrangements/1.json
  def destroy
    @arrangement.destroy
    respond_to do |format|
      format.html { redirect_to arrangements_url, notice: 'Arrangement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_arrangement
      @arrangement = Arrangement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def arrangement_params
      params[:arrangement]
    end
end
