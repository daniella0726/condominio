class RespuestaPqrsController < ApplicationController
  before_action :set_respuesta_pqr, only: %i[ show edit update destroy ]

  # GET /respuesta_pqrs or /respuesta_pqrs.json
  def index
    @respuesta_pqrs = RespuestaPqr.all
  end

  # GET /respuesta_pqrs/1 or /respuesta_pqrs/1.json
  def show
  end

  # GET /respuesta_pqrs/new
  def new
    @respuesta_pqr = RespuestaPqr.new
  end

  # GET /respuesta_pqrs/1/edit
  def edit
  end

  # POST /respuesta_pqrs or /respuesta_pqrs.json
  def create
    @respuesta_pqr = RespuestaPqr.new(respuesta_pqr_params)

    respond_to do |format|
      if @respuesta_pqr.save
        format.html { redirect_to respuesta_pqr_url(@respuesta_pqr), notice: "Respuesta pqr was successfully created." }
        format.json { render :show, status: :created, location: @respuesta_pqr }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @respuesta_pqr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /respuesta_pqrs/1 or /respuesta_pqrs/1.json
  def update
    respond_to do |format|
      if @respuesta_pqr.update(respuesta_pqr_params)
        format.html { redirect_to respuesta_pqr_url(@respuesta_pqr), notice: "Respuesta pqr was successfully updated." }
        format.json { render :show, status: :ok, location: @respuesta_pqr }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @respuesta_pqr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /respuesta_pqrs/1 or /respuesta_pqrs/1.json
  def destroy
    @respuesta_pqr.destroy

    respond_to do |format|
      format.html { redirect_to respuesta_pqrs_url, notice: "Respuesta pqr was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_respuesta_pqr
      @respuesta_pqr = RespuestaPqr.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def respuesta_pqr_params
      params.require(:respuesta_pqr).permit(:pqr_id, :admin_id, :descripcion)
    end
end
