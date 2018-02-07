class ObszarsController < ApplicationController
  before_action :set_obszar, only: [:show, :edit, :update, :destroy]

  # GET /obszars
  # GET /obszars.json
  def index
    @obszars = Obszar.all
  end

  # GET /obszars/1
  # GET /obszars/1.json
  def show
  end

  # GET /obszars/new
  def new
    @obszar = Obszar.new
  end

  # GET /obszars/1/edit
  def edit
  end

  # POST /obszars
  # POST /obszars.json
  def create
    @obszar = Obszar.new(obszar_params)

    respond_to do |format|
      if @obszar.save
        format.html { redirect_to @obszar, notice: 'Obszar was successfully created.' }
        format.json { render :show, status: :created, location: @obszar }
      else
        format.html { render :new }
        format.json { render json: @obszar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /obszars/1
  # PATCH/PUT /obszars/1.json
  def update
    respond_to do |format|
      if @obszar.update(obszar_params)
        format.html { redirect_to @obszar, notice: 'Obszar was successfully updated.' }
        format.json { render :show, status: :ok, location: @obszar }
      else
        format.html { render :edit }
        format.json { render json: @obszar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /obszars/1
  # DELETE /obszars/1.json
  def destroy
    @obszar.destroy
    respond_to do |format|
      format.html { redirect_to obszars_url, notice: 'Obszar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_obszar
      @obszar = Obszar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def obszar_params
      params.require(:obszar).permit(:id_obszaru, :kod_pocztowy)
    end
end
