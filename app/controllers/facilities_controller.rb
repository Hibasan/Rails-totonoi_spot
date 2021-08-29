class FacilitiesController < ApplicationController
  before_action :authenticate_user!, except: %i[top about search show index]

  def search
    @new_facilities = Facility.limit(3).order('updated_at DESC')
    @new_reviews = Review.includes(:user, :facility).limit(3).order('updated_at DESC')
    @chair = Chair.ransack(params[:q])
    @chairs = @chair.result(distinct: true)
  end

  def new
    @facility = Facility.new
    @facility.saunas.build
    @facility.water_baths.build
    @facility.chairs.build
  end

  def create
    @facility = Facility.new(facility_params)
    if @facility.save
      redirect_to facility_path(@facility.id), notice: '施設情報を登録しました'
    else
      render action: :new
    end
  end

  def index
    if params[:q][:search] == 'search'
      name = params[:q][:facility_name]
      @facilities = Facility.where('(name LIKE ?) OR (prefecture LIKE ?) OR (address LIKE ?)', "%#{name}%", "%#{name}%",
                                   "%#{name}%")
      @chair = Chair.ransack(params[:q])
      @chairs = @chair.result(distinct: true)
      chairs_facility_ids = @chairs.pluck(:facility_id)
      @facilities = @facilities.where(id: chairs_facility_ids)
      @facilities = @facilities.page(params[:page]).per(3)
    elsif params[:q][:search] == 'prefecture'
      name = params[:q][:facility_name]
      @facilities = Facility.where('prefecture LIKE ?', "%#{name}%")
      @facilities = @facilities.page(params[:page]).per(3)
    elsif params[:q][:search] == 'all'
      @facilities = Facility.page(params[:page]).per(3)
    end
  end

  def show
    @facility = Facility.find(params[:id])
    @review = Review.new
    @review.facility_id = params[:id].to_i
    @reviews = @facility.reviews.where(facility_id: params[:id]).includes([:user])
    @male_saunas = @facility.saunas.where(sex_id: 1)
    @female_saunas = @facility.saunas.where(sex_id: 2)
    @male_water_baths = @facility.water_baths.where(sex_id: 1)
    @female_water_baths = @facility.water_baths.where(sex_id: 2)
    @male_in_chairs = @facility.chairs.where(sex_id: 1, rest_area_id: 1)
    @male_out_chairs = @facility.chairs.where(sex_id: 1, rest_area_id: 2)
    @female_in_chairs = @facility.chairs.where(sex_id: 2, rest_area_id: 1)
    @female_out_chairs = @facility.chairs.where(sex_id: 2, rest_area_id: 2)
    @favorite = current_user.favorite_facilities.find_by(facility_id: @facility.id) if user_signed_in?
  end

  def edit
    @facility = Facility.find(params[:id])
  end

  def update
    @facility = Facility.find(params[:id])
    if @facility.update(facility_params)
      redirect_to facility_path(@facility.id), notice: '施設情報を編集しました'
    else
      render :edit
    end
  end

  def destroy
    @facility = Facility.find(params[:id])
    @facility.destroy
    redirect_to facilities_search_path, notice: '施設情報を削除しました'
  end

  private

  def facility_params
    params.require(:facility).permit(:id, :name, :prefecture, :address,
                                     :homepage, :business_hours, :holiday,
                                     :fee, :payment, :comment, :image, :image_cache,
                                     saunas_attributes: %i[
                                       id sex sex_id temperature intern comment
                                     ],
                                     water_baths_attributes: %i[
                                       id sex sex_id temperature intern comment
                                     ],
                                     chairs_attributes: %i[
                                       id sex sex_id rest_area_id comment
                                       bath deck relax bench bench_non_backrest
                                     ])
  end
end
