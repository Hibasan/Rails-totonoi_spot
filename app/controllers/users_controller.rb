class UsersController < ApplicationController

  def show
    @resource = User.find(current_user.id)
    @resource_name = :user
    @devise_mapping = Devise.mappings
  end
end
