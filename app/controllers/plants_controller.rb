class PlantsController < ApplicationController

  def index
    render json:Plant.all, status: :ok
  end
  def show
    render json:Plant.find_by(id: params[:id]), status: :ok

  end
   # POST /plants
   def create
    plant = Plant.create(plant_params)
    render json: plant, status: :created
  end

  private
  # all methods below here are private
  def plant_params
    params.permit(:name, :image, :price)
  end
end
