class ParksController < ApplicationController

  def index
    @parks = Park.all
    name = params[:name]
    @parks = Park.by_name(name)
    json_response(@parks)
  end

  def show
    @park = Park.find(params[:id])
    json_response(@park)
  end

  def create
    @park = Park.create!(park_params)
    json_response(@park, :created)
  end

  def update
    @park = Park.find(params[:id])
    if @park.update!(park_params)
      render status: 200, json: {
        message: "Your park has been updated!"
      }
    end
  end

  def destroy
    @park = Park.find(params[:id])
    if @park.destroy
      render status: 200, json: {
        message: "Your park has been deleted!"
      }
    end
  end

  private
  def park_params
    params.permit(:name, :location, :description, :park_type)
  end
end
