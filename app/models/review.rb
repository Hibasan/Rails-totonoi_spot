class Review < ApplicationRecord
  validates :sex, presence: true
  belongs_to :user
  belongs_to :facility
  enum sex: { "無性別": 0, "男性": 1, "女性": 2 }
end
