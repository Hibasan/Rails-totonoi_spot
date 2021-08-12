class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:guest_sign_in,:admin_guest_sign_in]

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

  def guest_sign_in
    user = User.guest
    sign_in user
    redirect_to root_path
  end

  def admin_guest_sign_in
    user = User.admin_guest
    sign_in user
    redirect_to root_path
  end

end
