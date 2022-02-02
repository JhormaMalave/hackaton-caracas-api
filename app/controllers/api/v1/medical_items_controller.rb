class Api::V1::MedicalItemsController < ApplicationController
  before_action :set_medical_item, only: %i[ show update destroy ]

  # GET /medical_items
  def index
    @medical_items = MedicalItem.all

    render json: @medical_items
  end

  # GET /medical_items/1
  def show
    render json: @medical_item
  end

  # POST /medical_items
  def create
    @medical_item = MedicalItem.new(medical_item_params)

    if @medical_item.save
      render json: @medical_item, status: :created, location: @medical_item
    else
      render json: @medical_item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /medical_items/1
  def update
    if @medical_item.update(medical_item_params)
      render json: @medical_item
    else
      render json: @medical_item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /medical_items/1
  def destroy
    @medical_item.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medical_item
      @medical_item = MedicalItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def medical_item_params
      params.require(:medical_item).permit(:name)
    end
end