class Sauna < ApplicationRecord
  validates :sex_id, presence: true
  belongs_to :facility
  belongs_to :sex
end
