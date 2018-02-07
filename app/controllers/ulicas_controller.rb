class UlicasController < ApplicationController
  before_action :set_ulica, only: [:show, :edit, :update, :destroy]

  # GET /ulicas
  # GET /ulicas.json
  def index
    @ulicas = Ulica.all
  end

  # GET /ulicas/1
  # GET /ulicas/1.json
  def show
  end

  # GET /ulicas/new
  def new
    @ulica = Ulica.new
  end

  # GET /ulicas/1/edit
  def edit
  end

  # POST /ulicas
  # POST /ulicas.json
  def create
    @ulica = Ulica.new(ulica_params)

    respond_to do |format|
      if @ulica.save
        format.html { redirect_to @ulica, notice: 'Ulica was successfully created.' }
        format.json { render :show, status: :created, location: @ulica }
      else
        format.html { render :new }
        format.json { render json: @ulica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ulicas/1
  # PATCH/PUT /ulicas/1.json
  def update
    respond_to do |format|
      if @ulica.update(ulica_params)
        format.html { redirect_to @ulica, notice: 'Ulica was successfully updated.' }
        format.json { render :show, status: :ok, location: @ulica }
      else
        format.html { render :edit }
        format.json { render json: @ulica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ulicas/1
  # DELETE /ulicas/1.json
  def destroy
    @ulica.destroy
    respond_to do |format|
      format.html { redirect_to ulicas_url, notice: 'Ulica was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ulica
      @ulica = Ulica.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ulica_params
      params.require(:ulica).permit(:id_ulicy, :nazwa_ulicy)
    end
end
