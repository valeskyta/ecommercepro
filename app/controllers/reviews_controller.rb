class ReviewsController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.build(reviews_params)
    if @review.save
      redirect_to @product, notice: "El review fue creado con exito"
    else
      redirect_to @product, alert: "El review no fue creado"
    end
  end

  private
  def reviews_params
    params.require(:review).permit(:review)
  end
end








