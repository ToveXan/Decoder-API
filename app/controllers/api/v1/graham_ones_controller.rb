class Api::V1::GrahamOnesController < ApplicationController
  before_action :set_graham_one, only: [:show, :update, :destroy]

  # GET /graham_ones
  def index
    @graham_ones = GrahamOne.all

    render json: @graham_ones
  end

  # GET /graham_ones/1
  def show
    render json: @graham_one
  end

  # POST /graham_ones
  def create
    @graham_one = GrahamOne.new(graham_one_params)

    if @graham_one.save
      render json: @graham_one, status: :created, location: @graham_one
    else
      render json: @graham_one.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /graham_ones/1
  def update
    if @graham_one.update(graham_one_params)
      render json: @graham_one
    else
      render json: @graham_one.errors, status: :unprocessable_entity
    end
  end

  # DELETE /graham_ones/1
  def destroy
    @graham_one.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_graham_one
      @graham_one = GrahamOne.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def graham_one_params
      params.require(:graham_one).permit(:description)
    end
end
