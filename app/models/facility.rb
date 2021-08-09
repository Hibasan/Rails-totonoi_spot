class Facility < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :favorite_facilities, dependent: :destroy

  has_many :saunas, dependent: :destroy
  has_many :water_baths, dependent: :destroy
  has_many :chairs, dependent: :destroy

  accepts_nested_attributes_for :saunas, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :water_baths, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :chairs, allow_destroy: true, reject_if: :all_blank

end
