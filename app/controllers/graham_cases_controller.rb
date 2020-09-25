class GrahamCasesController < ApplicationController
  before_action :set_graham_case, only: [:show, :update, :destroy]

  # GET /graham_cases
  def index
    @graham_cases = GrahamCase.all

    render json: @graham_cases
  end

  # GET /graham_cases/1
  def show
    render json: @graham_case
  end

  # POST /graham_cases
  def create
    @graham_case = GrahamCase.new(graham_case_params)

    if @graham_case.save
      render json: @graham_case, status: :created, location: @graham_case
    else
      render json: @graham_case.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /graham_cases/1
  def update
    if @graham_case.update(graham_case_params)
      render json: @graham_case
    else
      render json: @graham_case.errors, status: :unprocessable_entity
    end
  end

  # DELETE /graham_cases/1
  def destroy
    @graham_case.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_graham_case
      @graham_case = GrahamCase.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def graham_case_params
      params.require(:graham_case).permit(:one, :two, :three, :four, :five)
    end
end
