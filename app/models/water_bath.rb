class WaterBath < ApplicationRecord
  validates :sex_id, presence: {message: "性別を選択"}
  validates :temperature, presence: {message: "数字を入力"}
  validates :intern, inclusion: { in: 1..99 ,message: "数字を入力 (1〜99)"}
  belongs_to :facility
  belongs_to :sex
end
