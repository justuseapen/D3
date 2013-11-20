class SeshesController < ApplicationController
  before_action :set_sesh, only: [:show, :edit, :update, :destroy]

  # GET /seshes
  # GET /seshes.json
  def index
    @seshes = Sesh.all
  end

  # GET /seshes/1
  # GET /seshes/1.json
  def show
  end

  # GET /seshes/new
  def new
    @sesh = Sesh.new
  end

  # GET /seshes/1/edit
  def edit
  end

  # POST /seshes
  # POST /seshes.json
  def create
    @sesh = Sesh.new(sesh_params)

    respond_to do |format|
      if @sesh.save
        format.html { redirect_to @sesh, notice: 'Sesh was successfully created.' }
        format.json { render action: 'show', status: :created, location: @sesh }
      else
        format.html { render action: 'new' }
        format.json { render json: @sesh.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seshes/1
  # PATCH/PUT /seshes/1.json
  def update
    respond_to do |format|
      if @sesh.update(sesh_params)
        format.html { redirect_to @sesh, notice: 'Sesh was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sesh.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seshes/1
  # DELETE /seshes/1.json
  def destroy
    @sesh.destroy
    respond_to do |format|
      format.html { redirect_to seshes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sesh
      @sesh = Sesh.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sesh_params
      params.require(:sesh).permit(:name, :ended_at)
    end
end
