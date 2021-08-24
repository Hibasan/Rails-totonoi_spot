class Sauna < ApplicationRecord
  validates :sex_id, presence: true
  validates :temperature, inclusion: { in: 1.. }
  validates :intern, inclusion: { in: 1.. }
  belongs_to :facility
  belongs_to :sex
end
