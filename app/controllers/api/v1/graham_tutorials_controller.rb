class Api::V1::GrahamTutorialsController < ApplicationController
  before_action :set_graham_tutorial, only: [:show, :update, :destroy]

  # GET /graham_tutorials
  def index
    @graham_tutorials = GrahamTutorial.all

    render json: @graham_tutorials
  end

  # GET /graham_tutorials/1
  def show
    render json: @graham_tutorial
  end

  # POST /graham_tutorials
  def create
    @graham_tutorial = GrahamTutorial.new(graham_tutorial_params)

    if @graham_tutorial.save
      render json: @graham_tutorial, status: :created, location: @graham_tutorial
    else
      render json: @graham_tutorial.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /graham_tutorials/1
  def update
    if @graham_tutorial.update(graham_tutorial_params)
      render json: @graham_tutorial
    else
      render json: @graham_tutorial.errors, status: :unprocessable_entity
    end
  end

  # DELETE /graham_tutorials/1
  def destroy
    @graham_tutorial.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_graham_tutorial
      @graham_tutorial = GrahamTutorial.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def graham_tutorial_params
      params.require(:graham_tutorial).permit(:one, :two, :three, :four, :five)
    end
end
