class Facility < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :saunas, dependent: :destroy
  accepts_nested_attributes_for :saunas, allow_destroy: true, reject_if: :all_blank
end
