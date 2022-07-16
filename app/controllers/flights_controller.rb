class FlightsController < ApplicationController
  def index
    if current_user
      @user = current_user
    end
    @pagy, @flights = pagy(Flight.where('departure_date > ?', Time.now ).order(departure_date: :asc))
  end
end
