class FavoriteFacilitiesController < ApplicationController

  def create
    @facility = Facility.find(params[:facility_id])
    favorite = current_user.favorite_facilities.create(facility_id: params[:facility_id])
    redirect_to facility_path(params[:facility_id]), notice: "さんのブログをお気に入り登録しました"
  end

  def destroy
    @facility = Facility.find(params[:facility_id])
    favorite = current_user.favorite_facilities.find_by(id: params[:id]).destroy
    redirect_to facility_path(params[:facility_id]), notice: "さんのブログをお気に入り解除しました"
  end
end
