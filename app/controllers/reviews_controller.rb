class ReviewsController < ApplicationController
  before_action :authenticate_user!, except: [:show]

  def new
    @review = Review.new
    @review.facility_id = params[:facility_id].to_i
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to facility_path(@review.facility_id),notice:"#{@review.facility.name}に評価投稿をしました"
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
