class ReviewsController < ApplicationController
  before_action :authenticate_user!, except: [:show]

  def new
    @review = Review.new
    @review.facility_id = params[:facility_id].to_i
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to facility_path(@review.facility_id), notice: "#{@review.facility.name}に評価投稿をしました"
    else
      render :new
    end
  end

  def show
    @review = Review.find(params[:id])
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    if @review.update(review_params)
      redirect_to facility_path(@review.facility_id), notice: '評価を編集しました'
    else
      render :edit
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to facility_path(@review.facility_id), notice: '評価を削除しました'
  end

  private

  def review_params
    params.require(:review).permit(:sex, :dry, :light, :wide, :comment, :user_id, :facility_id)
  end
end
