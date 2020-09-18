class Api::V1::GrahamsController < ApplicationController
  before_action :set_graham, only: [:show, :update, :destroy]

  # GET /grahams
  def index
    @grahams = Graham.all

    render json: @grahams
  end

  # GET /grahams/1
  def show
    render json: @graham
  end

  # POST /grahams
  def create
    @graham = Graham.new(graham_params)

    if @graham.save
      render json: @graham, status: :created, location: @graham
    else
      render json: @graham.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /grahams/1
  def update
    if @graham.update(graham_params)
      render json: @graham
    else
      render json: @graham.errors, status: :unprocessable_entity
    end
  end

  # DELETE /grahams/1
  def destroy
    @graham.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_graham
      @graham = Graham.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def graham_params
      params.require(:graham).permit(:greeting, :tutorial, :life_count, :user_id)
    end
end
