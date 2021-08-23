module FavoriteFacilitiesHelper
  def favorite_facility?
    @favorite = current_user.favorite_facilities.find_by(facility_id: @facility.id) if user_signed_in?
    @favorite.present?
  end
end
