class Facility < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :saunas, dependent: :destroy
  has_many :water_baths, dependent: :destroy
  has_many :rest_areas, dependent: :destroy
  accepts_nested_attributes_for :saunas, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :water_baths, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :rest_areas, allow_destroy: true, reject_if: :all_blank

end
