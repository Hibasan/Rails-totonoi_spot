class FacilitiesController < ApplicationController
  before_action :authenticate_user!, except: [:top, :about, :search, :show, :index]

  def search
    @new_facilities = Facility.limit(3).order("updated_at DESC")
    @new_reviews = Review.limit(3).order("updated_at DESC")
    @search = Facility.ransack(params[:q])
    @facilities = @search.result(distinct: true)
  end

  def new
    @facility = Facility.new
    @facility.saunas.build
    @facility.water_baths.build
    @facility.chairs.build
    @facility.chairs.build
  end

  def create
    @facility = Facility.new(facility_params)
    if @facility.save
      redirect_to root_path,notice:"施設情報を登録しました"
    else
      render :new
    end
  end

  def index
      @search = Facility.ransack(params[:q])
      @facilities = @search.result(distinct: true)
  end

  def show
    @facility = Facility.find(params[:id])
    @saunas = @facility.saunas
    @water_baths = @facility.water_baths
    @chairs = @facility.chairs
    if user_signed_in?
      @favorite = current_user.favorite_facilities.find_by(facility_id: @facility.id)
    end
  end

  def edit
    @facility = Facility.find(params[:id])
    @facility.saunas.build
    @facility.water_baths.build
    if @facility.chairs[0].nil?
      @facility.chairs.build
      @facility.chairs.build
    end
  end

  def update
    @facility = Facility.find(params[:id])
    if @facility.update(facility_params)
      redirect_to facility_path(@facility.id),notice:"施設情報を編集しました"
    else
      render :edit
    end
  end

  def destroy
    @facility = Facility.find(params[:id])
    @facility.destroy
    redirect_to root_path,notice:"施設情報を削除しました"
  end

  private
  def facility_params
    params.require(:facility).permit(:id, :name, :prefecture, :address,
                                     :homepage, :business_hours, :holiday,
                                     :fee, :payment, :comment,
                                     saunas_attributes: [
                                       :id, :sex_id, :temperature, :intern, :comment],
                                     water_baths_attributes: [
                                       :id, :sex_id, :temperature, :intern, :comment],
                                    chairs_attributes: [
                                      :id, :sex_id, :rest_area_id, :comment,
                                      :bath, :deck, :relax, :bench, :bench_non_backrest ])
  end
end
