class Chair < ApplicationRecord
  validates :sex_id, presence: true
  validates :rest_area_id, presence: true
  validates :bath, inclusion: { in: 1.. }
  validates :deck, inclusion: { in: 1.. }
  validates :relax, inclusion: { in: 1.. }
  validates :bench, inclusion: { in: 1.. }
  validates :bench_non_backrest, inclusion: { in: 1.. }
  belongs_to :facility
  belongs_to :sex
  belongs_to :rest_area
end
