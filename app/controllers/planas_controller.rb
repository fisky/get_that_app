class PlanasController < ApplicationController
  before_action :set_plana, only: [:show, :edit, :update, :destroy]

  # GET /planas
  # GET /planas.json
  def index
    @planas = Plana.all
  end

  # GET /planas/1
  # GET /planas/1.json
  def show
  end

  # GET /planas/new
  def new
    @plana = Plana.new
  end

  # GET /planas/1/edit
  def edit
  end

  # POST /planas
  # POST /planas.json
  def create
    @plana = Plana.new(plana_params)

    respond_to do |format|
      if @plana.save
        format.html { redirect_to @plana, notice: 'Plana was successfully created.' }
        format.json { render :show, status: :created, location: @plana }
      else
        format.html { render :new }
        format.json { render json: @plana.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /planas/1
  # PATCH/PUT /planas/1.json
  def update
    respond_to do |format|
      if @plana.update(plana_params)
        format.html { redirect_to @plana, notice: 'Plana was successfully updated.' }
        format.json { render :show, status: :ok, location: @plana }
      else
        format.html { render :edit }
        format.json { render json: @plana.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /planas/1
  # DELETE /planas/1.json
  def destroy
    @plana.destroy
    respond_to do |format|
      format.html { redirect_to planas_url, notice: 'Plana was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plana
      @plana = Plana.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plana_params
      params.require(:plana).permit(:week, :wkday, :exercise_id)
    end
end
