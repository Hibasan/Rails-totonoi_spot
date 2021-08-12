class UsersController < ApplicationController
  before_action :authenticate_user!

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

  def guest_session
    user = User.guest
    sign_in user
  end

  def admin_guest_session
    user = User.admin_guest
    sign_in user
  end

end
