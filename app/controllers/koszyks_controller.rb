class KoszyksController < ApplicationController
  before_action :set_koszyk, only: [:show, :edit, :update, :destroy]

  # GET /koszyks
  # GET /koszyks.json
  def index
    @koszyks = Koszyk.all
  end

  # GET /koszyks/1
  # GET /koszyks/1.json
  def show
  end

  # GET /koszyks/new
  def new
    @koszyk = Koszyk.new
  end

  # GET /koszyks/1/edit
  def edit
  end

  # POST /koszyks
  # POST /koszyks.json
  def create
    @koszyk = Koszyk.new(koszyk_params)

    respond_to do |format|
      if @koszyk.save
        format.html { redirect_to @koszyk, notice: 'Koszyk was successfully created.' }
        format.json { render :show, status: :created, location: @koszyk }
      else
        format.html { render :new }
        format.json { render json: @koszyk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /koszyks/1
  # PATCH/PUT /koszyks/1.json
  def update
    respond_to do |format|
      if @koszyk.update(koszyk_params)
        format.html { redirect_to @koszyk, notice: 'Koszyk was successfully updated.' }
        format.json { render :show, status: :ok, location: @koszyk }
      else
        format.html { render :edit }
        format.json { render json: @koszyk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /koszyks/1
  # DELETE /koszyks/1.json
  def destroy
    @koszyk.destroy
    respond_to do |format|
      format.html { redirect_to koszyks_url, notice: 'Koszyk was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_koszyk
      @koszyk = Koszyk.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def koszyk_params
      params.require(:koszyk).permit(:liczba_sztuk)
    end
end
