class Api::V1::GrahamThreesController < ApplicationController
  before_action :set_graham_three, only: [:show, :update, :destroy]

  # GET /graham_threes
  def index
    @graham_threes = GrahamThree.all

    render json: @graham_threes
  end

  # GET /graham_threes/1
  def show
    render json: @graham_three
  end

  # POST /graham_threes
  def create
    @graham_three = GrahamThree.new(graham_three_params)

    if @graham_three.save
      render json: @graham_three, status: :created, location: @graham_three
    else
      render json: @graham_three.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /graham_threes/1
  def update
    if @graham_three.update(graham_three_params)
      render json: @graham_three
    else
      render json: @graham_three.errors, status: :unprocessable_entity
    end
  end

  # DELETE /graham_threes/1
  def destroy
    @graham_three.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_graham_three
      @graham_three = GrahamThree.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def graham_three_params
      params.require(:graham_three).permit(:description)
    end
end
