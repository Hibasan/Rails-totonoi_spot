class FacilitiesController < ApplicationController
  before_action :authenticate_user!, except: [:top, :about, :search, :show, :index]

  def search
    @new_facilities = Facility.limit(3).order("updated_at DESC")
    @new_reviews = Review.includes(:user,:facility).limit(3).order("updated_at DESC")
    @chair = Chair.ransack(params[:q])
    @chairs = @chair.result(distinct: true)
  end

  def new
    @facility = Facility.new

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
    name = params[:q][:facility_name]
    @facilities = Facility.where("(name LIKE ?) OR (prefecture LIKE ?) OR (address LIKE ?)","%#{name}%","%#{name}%","%#{name}%")
    @chair = Chair.ransack(params[:q])
    @chairs = @chair.result(distinct: true)
    chairs_facility_ids = @chairs.pluck(:facility_id)
    @facilities = @facilities.where(id: chairs_facility_ids)
  end

  def show
    @facility = Facility.find(params[:id])
    @saunas = @facility.saunas.includes(:sex)
    @water_baths = @facility.water_baths.includes(:sex)
    @chairs = @facility.chairs.includes(:sex,:rest_area)
    if user_signed_in?
      @favorite = current_user.favorite_facilities.find_by(facility_id: @facility.id)
    end
  end

  def edit
    @facility = Facility.find(params[:id])
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
