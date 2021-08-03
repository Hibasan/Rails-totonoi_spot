class FavoriteFacility < ApplicationRecord
  belongs_to :user
  belongs_to :facility
end
