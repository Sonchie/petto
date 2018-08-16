class BookingsController < ApplicationController
  before_action :set_pet, only: [:new, :create]
  before_action :set_booking, only: [:edit, :show, :update, :destroy]
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
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def edit
    @booking = Booking.find(params[:id])
    # raise
    authorize @booking
  end

  def show
    # note before action at top.
  end

  def update
    if @booking.update(booking_params)
      @booking.user = current_user
      authorize @booking
      # raise
      redirect_to booking_path(@booking)
    else
      render :edit
    end
  end

  def destroy
    authorize @booking
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def set_pet
    @pet = Pet.find(params[:pet_id])
  end

    def set_booking
    @booking = Booking.find(params[:id])
  end
end
