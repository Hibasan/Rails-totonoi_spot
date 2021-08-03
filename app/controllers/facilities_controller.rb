class FacilitiesController < ApplicationController

  def search
    @facilities = Facility.limit(3).order("updated_at DESC")
    @reviews = Review.limit(3).order("updated_at DESC")
  end

  def new
    @facility = Facility.new
    @facility.saunas.build
  end

  def create
    @facility = Facility.new(facility_params)
    if @facility.save
      redirect_to root_path,notice:"施設情報を登録しました"
    else
      render :new
    end
  end

  def show
    @facility = Facility.find(params[:id])
    @saunas = @facility.saunas
  end

  def edit
    @facility = Facility.find(params[:id])
    @facility.saunas.build
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
                                       :id, :sex , :temperature, :intern, :comment
                                     ])
  end
end
