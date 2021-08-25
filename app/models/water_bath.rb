class WaterBath < ApplicationRecord
  validates :sex_id, presence: {message: "性別を選択してください"}
  validates :temperature, presence: {message: "正しい数字を入力してください"}
  validates :intern, inclusion: { in: 1..99 ,message: "正しい数値を数字を入力してください (1〜99)"}
  belongs_to :facility
  belongs_to :sex
end
