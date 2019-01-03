class ReviewsController < ApplicationController

  def create
    review = Review.new(review_params)
    review.user = current_user
    if review.save
      render json: reviews
    else
      render json: {errors: review.errors.full_messages, status: :unprocessable_entity
    end
  end

  private
  def review_params
    params.require(:review).permit(:body, :rating)
  end

end
