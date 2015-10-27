class ReviewsController < ApplicationController
  load_and_authorize_resource
  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.build(review_params) #singular
    @review.user = current_user
    if @review.save
      redirect_to @product, notice: "El review fue creado con exito"
    else
      redirect_to @product, alert: "El review no fue creado"
    end
  end

  private
  def review_params #singular
    params.require(:review).permit(:review)
  end
end








