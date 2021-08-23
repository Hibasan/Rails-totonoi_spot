class FavoriteFacilitiesController < ApplicationController
  def create
    @facility = Facility.find(params[:facility_id])
    favorite = current_user.favorite_facilities.create(facility_id: params[:facility_id])
  end

  def destroy
    @facility = Facility.find(params[:facility_id])
    favorite = current_user.favorite_facilities.find_by(id: params[:id]).destroy
  end
end
