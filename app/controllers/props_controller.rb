class PropsController < ApplicationController
  before_filter :authorize
  before_action :set_prop, only: [:show, :edit, :update, :destroy]

  # GET /props
  # GET /props.json
  def index
    @props = Prop.all
  end

  # GET /props/1
  # GET /props/1.json
  def show
  end

  # GET /props/new
  def new
    @prop = Prop.new
  end

  # GET /props/1/edit
  def edit
  end

  # POST /props
  # POST /props.json
  def create
    @prop = Prop.new(prop_params)

    respond_to do |format|
      if @prop.save
        format.html { redirect_to action: "index", notice: 'Prop was successfully created.' }
        format.json { render :show, status: :created, location: @prop }
      else
        format.html { render :new }
        format.json { render json: @prop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /props/1
  # PATCH/PUT /props/1.json
  def update
    respond_to do |format|
      if @prop.update(prop_params)
        format.html { redirect_to action: "index", notice: 'Prop was successfully updated.' }
        format.json { render :show, status: :ok, location: @prop }
      else
        format.html { render :edit }
        format.json { render json: @prop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /props/1
  # DELETE /props/1.json
  def destroy
    @prop.destroy
    respond_to do |format|
      format.html { redirect_to props_url, notice: 'Prop was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prop
      @prop = Prop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prop_params
      params.require(:prop).permit(:name, :status, [:id])
    end
end
