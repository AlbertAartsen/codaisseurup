class BookingsController < ApplicationController
  before_action :authenticate_user!


  def create
    @registration = current_user.registrations.create(registration_params)

    redirect_to @registration.event, notice: "Thanks you for registering!"
  end

  private

  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at, :price, :total, :room_id)
  end

  end
