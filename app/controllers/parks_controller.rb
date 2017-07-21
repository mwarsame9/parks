class QuotesController < ApplicationController

  def index
    @parks = {"Acadia National Park in Maine"}
    json_response(@parks)
  end

  private
  def json_response(object)
    render json: object, status: :ok
  end
end
