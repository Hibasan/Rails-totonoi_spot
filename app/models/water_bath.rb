class WaterBath < ApplicationRecord
  validates :sex_id, presence: true
  validates :sex_id, presence: {message: "の『男性/女性』を選択してください"}
  validates :intern, inclusion: { in: 1.. }
  belongs_to :facility
  belongs_to :sex
end
