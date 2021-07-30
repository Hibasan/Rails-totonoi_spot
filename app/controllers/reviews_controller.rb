class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to root_path,notice:"施設情報を登録しました"
    else
      render :new
    end
  end

  def show
    @review = Review.find(params[:id])
  end


  private
  def review_params
    params.require(:review).permit(:sex, :dry, :light, :wide, :comment,:user_id, :facility_id)
  end
end
