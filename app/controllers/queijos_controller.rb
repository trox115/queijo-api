class QueijosController < ApplicationController
  before_action :set_queijo, only: [:show, :edit, :update, :destroy]

  # GET /queijos
  # GET /queijos.json
  def index
    @queijos = Queijo.all
  end

  # GET /queijos/1
  # GET /queijos/1.json
  def show
  end

  # GET /queijos/new
  def new
    @queijo = Queijo.new
  end

  # GET /queijos/1/edit
  def edit
  end

  # POST /queijos
  # POST /queijos.json
  def create
    @queijo = Queijo.new(queijo_params)

    respond_to do |format|
      if @queijo.save
        format.html { redirect_to @queijo, notice: 'Queijo was successfully created.' }
        format.json { render :show, status: :created, location: @queijo }
      else
        format.html { render :new }
        format.json { render json: @queijo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /queijos/1
  # PATCH/PUT /queijos/1.json
  def update
    respond_to do |format|
      if @queijo.update(queijo_params)
        format.html { redirect_to @queijo, notice: 'Queijo was successfully updated.' }
        format.json { render :show, status: :ok, location: @queijo }
      else
        format.html { render :edit }
        format.json { render json: @queijo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /queijos/1
  # DELETE /queijos/1.json
  def destroy
    @queijo.destroy
    respond_to do |format|
      format.html { redirect_to queijos_url, notice: 'Queijo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_queijo
      @queijo = Queijo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def queijo_params
      params.require(:queijo).permit(:nome, :tamanho)
    end
end
