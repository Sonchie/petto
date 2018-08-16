class BookingsController < ApplicationController
  before_action :set_pet
  # skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @bookings = policy_scope(Booking).all
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.pet = @pet
    authorize @booking
    if @booking.save!
      redirect_to pet_booking_path(@pet)
    else
      render :new
    end
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def edit
  end

  def show
    # note before action at top.
  end

  def update
  end

  def destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def set_pet
    @pet = Pet.find(params[:pet_id])
  end
end
