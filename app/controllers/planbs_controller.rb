class PlanbsController < ApplicationController
  before_action :set_planb, only: [:show, :edit, :update, :destroy]

  # GET /planbs
  # GET /planbs.json
  def index
    @planbs = Planb.all
  end

  # GET /planbs/1
  # GET /planbs/1.json
  def show
  end

  # GET /planbs/new
  def new
    @planb = Planb.new
  end

  # GET /planbs/1/edit
  def edit
  end

  # POST /planbs
  # POST /planbs.json
  def create
    @planb = Planb.new(planb_params)

    respond_to do |format|
      if @planb.save
        format.html { redirect_to @planb, notice: 'Planb was successfully created.' }
        format.json { render :show, status: :created, location: @planb }
      else
        format.html { render :new }
        format.json { render json: @planb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /planbs/1
  # PATCH/PUT /planbs/1.json
  def update
    respond_to do |format|
      if @planb.update(planb_params)
        format.html { redirect_to @planb, notice: 'Planb was successfully updated.' }
        format.json { render :show, status: :ok, location: @planb }
      else
        format.html { render :edit }
        format.json { render json: @planb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /planbs/1
  # DELETE /planbs/1.json
  def destroy
    @planb.destroy
    respond_to do |format|
      format.html { redirect_to planbs_url, notice: 'Planb was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_planb
      @planb = Planb.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def planb_params
      params.require(:planb).permit(:week, :wkday, :exercise_id)
    end
end
