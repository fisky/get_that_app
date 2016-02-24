class PlancsController < ApplicationController
  before_action :set_planc, only: [:show, :edit, :update, :destroy]

  # GET /plancs
  # GET /plancs.json
  def index
    @plancs = Planc.all
  end

  # GET /plancs/1
  # GET /plancs/1.json
  def show
  end

  # GET /plancs/new
  def new
    @planc = Planc.new
  end

  # GET /plancs/1/edit
  def edit
  end

  # POST /plancs
  # POST /plancs.json
  def create
    @planc = Planc.new(planc_params)

    respond_to do |format|
      if @planc.save
        format.html { redirect_to @planc, notice: 'Planc was successfully created.' }
        format.json { render :show, status: :created, location: @planc }
      else
        format.html { render :new }
        format.json { render json: @planc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plancs/1
  # PATCH/PUT /plancs/1.json
  def update
    respond_to do |format|
      if @planc.update(planc_params)
        format.html { redirect_to @planc, notice: 'Planc was successfully updated.' }
        format.json { render :show, status: :ok, location: @planc }
      else
        format.html { render :edit }
        format.json { render json: @planc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plancs/1
  # DELETE /plancs/1.json
  def destroy
    @planc.destroy
    respond_to do |format|
      format.html { redirect_to plancs_url, notice: 'Planc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_planc
      @planc = Planc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def planc_params
      params.require(:planc).permit(:week, :wkday, :exercise_id)
    end
end
