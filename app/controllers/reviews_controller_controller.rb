class ReviewsControllerController < ApplicationController
  def new
    @review = Review.new
  end 
end
