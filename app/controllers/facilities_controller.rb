class FacilitiesController < ApplicationController

  def search
    @facilities = Facility.limit(3).order("updated_at DESC")
    @reviews = Review.limit(3).order("updated_at DESC")
  end

  def new
    @facility = Facility.new
    @facility.saunas.build
    @facility.water_baths.build
    @facility.rest_areas.build
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
    @facilities = Facility.all
  end

  def show
    @facility = Facility.find(params[:id])
    @saunas = @facility.saunas
    @water_baths = @facility.water_baths
    @rest_areas = @facility.rest_areas
    if user_signed_in?
      @favorite = current_user.favorite_facilities.find_by(facility_id: @facility.id)
    end
  end

  def edit
    @facility = Facility.find(params[:id])
    @facility.saunas.build
    @facility.water_baths.build
    @facility.rest_areas.build
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
                                       :id, :sex, :temperature, :intern, :comment],
                                     water_baths_attributes: [
                                      :id, :sex, :temperature, :intern, :comment],
                                    rest_areas_attributes: [
                                      :id, :sex, :inside_bath_chair, :inside_deck_chair,
                                      :inside_relax_chair, :inside_bench, :inside_bench_non_backrest,
                                      :outside_bath_chair, :outside_deck_chair,
                                      :outside_relax_chair, :outside_bench, :outside_bench_non_backrest,
                                      :comment ])
  end
end
