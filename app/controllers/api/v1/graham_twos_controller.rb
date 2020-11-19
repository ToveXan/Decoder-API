class Api::V1::GrahamTwosController < ApplicationController
  before_action :set_graham_two, only: [:show, :update, :destroy]

  # GET /graham_twos
  def index
    @graham_twos = GrahamTwo.all

    render json: @graham_twos
  end

  # GET /graham_twos/1
  def show
    render json: @graham_two
  end

  # POST /graham_twos
  def create
    @graham_two = GrahamTwo.new(graham_two_params)

    if @graham_two.save
      render json: @graham_two, status: :created, location: @graham_two
    else
      render json: @graham_two.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /graham_twos/1
  def update
    if @graham_two.update(graham_two_params)
      render json: @graham_two
    else
      render json: @graham_two.errors, status: :unprocessable_entity
    end
  end

  # DELETE /graham_twos/1
  def destroy
    @graham_two.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_graham_two
      @graham_two = GrahamTwo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def graham_two_params
      params.require(:graham_two).permit(:description)
    end
end
