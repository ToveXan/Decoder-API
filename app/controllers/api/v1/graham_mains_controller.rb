class Api::V1::GrahamMainsController < ApplicationController
  before_action :set_graham_main, only: [:show, :update, :destroy]

  # GET /graham_mains
  def index
    @graham_mains = GrahamMain.all

    render json: @graham_mains
  end

  # GET /graham_mains/1
  def show
    render json: @graham_main
  end

  # POST /graham_mains
  def create
    @graham_main = GrahamMain.new(graham_main_params)

    if @graham_main.save
      render json: @graham_main, status: :created, location: @graham_main
    else
      render json: @graham_main.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /graham_mains/1
  def update
    if @graham_main.update(graham_main_params)
      render json: @graham_main
    else
      render json: @graham_main.errors, status: :unprocessable_entity
    end
  end

  # DELETE /graham_mains/1
  def destroy
    @graham_main.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_graham_main
      @graham_main = GrahamMain.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def graham_main_params
      params.require(:graham_main).permit(:one, :two, :three, :four, :five)
    end
end
