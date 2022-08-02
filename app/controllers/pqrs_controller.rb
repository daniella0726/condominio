class PqrsController < ApplicationController
  layout "usuarios"
  before_action :set_pqr, only: %i[ show edit update destroy ]

  # GET /pqrs or /pqrs.json
  def index
    @pqrs = Pqr.all.where(user_id: current_user)
    @pqrs_general = Pqr.all
    if admin_signed_in?
      render layout: "admin"
    end
  end

  # GET /pqrs/1 or /pqrs/1.json
  def show
  end

  # GET /pqrs/new
  def new
    @pqr = Pqr.new
  end

  # GET /pqrs/1/edit
  def edit
    if admin_signed_in?
      @pqr.respuesta_pqrs.build
      render layout: "admin"
    end
  end

  # POST /pqrs or /pqrs.json
  def create
    @pqr = Pqr.new(pqr_params)

    respond_to do |format|
      if @pqr.save
        format.html { redirect_to pqr_url(@pqr), notice: "Pqr was successfully created." }
        format.json { render :show, status: :created, location: @pqr }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pqr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pqrs/1 or /pqrs/1.json
  def update
    respond_to do |format|
      if @pqr.update(pqr_params)
        format.html { redirect_to pqr_url(@pqr), notice: "Pqr was successfully updated." }
        format.json { render :show, status: :ok, location: @pqr }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pqr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pqrs/1 or /pqrs/1.json
  def destroy
    @pqr.destroy

    respond_to do |format|
      format.html { redirect_to pqrs_url, notice: "Pqr was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pqr
      @pqr = Pqr.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pqr_params
      params.require(:pqr).permit(:user_id, :tipo, :descripcion)
    end
end
