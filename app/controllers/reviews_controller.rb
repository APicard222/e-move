class ReviewsController < ApplicationController
  def new
    @vehicle = Vehicle.find(params[:vehicle_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @vehicle = Vehicle.find(params[:vehicle_id])
    @review.vehicle = @vehicle
    @review.user = current_user

    if @review.save
      @vehicle.update(available: true)
      redirect_to reservations_path
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
