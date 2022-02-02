class Api::V1::MedicalCentersController < ApplicationController
  before_action :set_medical_center, only: %i[ show update destroy ]

  # GET /medical_centers
  def index
    @medical_centers = MedicalCenter.all

    render json: @medical_centers
  end

  # GET /medical_centers/1
  def show
    render json: @medical_center
  end

  # POST /medical_centers
  def create
    @medical_center = MedicalCenter.new(medical_center_params)

    if @medical_center.save
      render json: @medical_center, status: :created
    else
      render json: @medical_center.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /medical_centers/1
  def update
    if @medical_center.update(medical_center_params)
      render json: @medical_center
    else
      render json: @medical_center.errors, status: :unprocessable_entity
    end
  end

  # DELETE /medical_centers/1
  def destroy
    @medical_center.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medical_center
      @medical_center = MedicalCenter.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def medical_center_params
      params.permit(:name, :description, :direction)
    end
end
