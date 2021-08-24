class WaterBath < ApplicationRecord
  validates :sex_id, presence: true
  validates :intern, inclusion: { in: 1.. }
  belongs_to :facility
  belongs_to :sex
end
