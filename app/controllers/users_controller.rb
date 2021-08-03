class UsersController < ApplicationController

  def show
    @resource = User.find(current_user.id)
    @resource_name = :user
    @devise_mapping = Devise.mappings
  end


  def review
    @reviews = Review.where(user_id: current_user.id)
  end


  def favorite_facilities
    @favorites = FavoriteFacility.where(user_id: current_user.id)
  end

end
