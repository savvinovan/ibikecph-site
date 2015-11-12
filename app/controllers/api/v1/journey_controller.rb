class Api::V1::JourneyController < Api::V1::BaseController
  def show
    @journey = TravelPlanner.get_journey(params[:journey][:options])

    render json: @journey
  end
end