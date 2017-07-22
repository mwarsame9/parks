class ParksController < ApplicationController

  def index
    if params[:name]
      name = params[:name]
      @parks = Park.search_by_name(name)
    elsif params[:location]
      location = params[:location]
      @parks = Park.search_by_location(location)
    elsif params[:park_type]
      park_type = params[:park_type]
      @parks = Park.search_by_park_type(park_type)
    else
      @parks = Park.all
    end
    json_response(@parks.page(params[:page]))
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

  def random
    random = Park.random
    render status: 200, json: random
  end

  private
  def park_params
    params.permit(:name, :location, :description, :park_type)
  end
end
