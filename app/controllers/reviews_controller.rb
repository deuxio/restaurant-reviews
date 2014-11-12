class ReviewsController < ApplicationController
  def create
    @restaurant = Restaurant.find(params[:id])
    @review = @restaurant.review.create(review_params)

    if @review.save
      redirect_to @restaurant
    else
      render :new
    end
  end

private

  def review_params
    params.require(:review).permit(:content, :title)
  end
end