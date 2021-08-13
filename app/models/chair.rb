class Chair < ApplicationRecord
  validates :sex_id, presence: true
  validates :rest_area_id, presence: true
  belongs_to :facility
  belongs_to :sex
  belongs_to :rest_area
end
