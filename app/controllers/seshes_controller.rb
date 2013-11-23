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
    @sesh
  end

  # GET /seshes/new
  def new
    @sesh = Sesh.new
  end

  # GET /seshes/1/edit
  def edit
    @sesh
  end

  # POST /seshes
  # POST /seshes.json
  def create
    @sesh = Sesh.new(sesh_params)

    if @sesh.update(sesh_params)
      redirect_to @sesh, notice: 'Sesh was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /seshes/1
  # PATCH/PUT /seshes/1.json
  def update
    @sesh.ended_at = Time.now

    if @sesh.save
      redirect_to root_path, notice: 'Sesh was successfully ended.'
    else
      render action: 'edit'
    end
  end

  # DELETE /seshes/1
  # DELETE /seshes/1.json
  def destroy
    @sesh.destroy
    respond_to do |format|
      format.html { redirect_to root_path }
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
