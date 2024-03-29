class Facility < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :prefecture, presence: true
  validates :address, presence: true
  validates :homepage, format: {with: /\A#{URI::regexp(%w(http https))}\z/,message: "httpもしくはhttpsから始まる文字を入力してください"},allow_blank: true

  has_many :reviews, dependent: :destroy
  has_many :favorite_facilities, dependent: :destroy
  has_many :saunas, dependent: :destroy
  has_many :water_baths, dependent: :destroy
  has_many :chairs, dependent: :destroy

  accepts_nested_attributes_for :saunas, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :water_baths, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :chairs, allow_destroy: true, reject_if: :all_blank

  mount_uploader :image, ImageUploader

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  enum thumb_direction: { "center": 0, "north": 1 , "west": 2, "east": 3, "south": 4}
end
