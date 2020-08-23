class LovsController < ApplicationController
  before_action :set_lov, only: [:show, :edit, :update, :destroy]

  # GET /lovs
  # GET /lovs.json
  def index
    @lovs = Lov.all
  end

  # GET /lovs/1
  # GET /lovs/1.json
  def show
  end

  # GET /lovs/new
  def new
    @lov = Lov.new
  end

  # GET /lovs/1/edit
  def edit
  end

  # POST /lovs
  # POST /lovs.json
  def create
    @lov = Lov.new(lov_params)

    respond_to do |format|
      if @lov.save
        format.html { redirect_to @lov, notice: 'Lov was successfully created.' }
        format.json { render :show, status: :created, location: @lov }
      else
        format.html { render :new }
        format.json { render json: @lov.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lovs/1
  # PATCH/PUT /lovs/1.json
  def update
    respond_to do |format|
      if @lov.update(lov_params)
        format.html { redirect_to @lov, notice: 'Lov was successfully updated.' }
        format.json { render :show, status: :ok, location: @lov }
      else
        format.html { render :edit }
        format.json { render json: @lov.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lovs/1
  # DELETE /lovs/1.json
  def destroy
    @lov.destroy
    respond_to do |format|
      format.html { redirect_to lovs_url, notice: 'Lov was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lov
      @lov = Lov.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lov_params
      params.require(:lov).permit(:tbl, :col, :val)
    end
end
