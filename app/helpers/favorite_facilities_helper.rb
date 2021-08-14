module FavoriteFacilitiesHelper

  def favorite_facility?
    if user_signed_in?
      @favorite = current_user.favorite_facilities.find_by(facility_id: @facility.id)
    end
    @favorite.present?
  end

end
