class ReviewsController < ApplicationController
  def index
    @reviews = Product.find(params[:id]).reviews
    @product_id = params[:id]
  end

  def create
    @product = Product.find(params[:review][:product_id])
    @review = @product.reviews.build(review_params)

    if @review.save
      flash[:success] = "Review Submitted Successfully"
      redirect_to product_reviews_path(@product)
    else
      render 'index'
    end
  end

  private

    def review_params
      params.require(:review).permit(:comment, :rating, :product_id)
    end
end
