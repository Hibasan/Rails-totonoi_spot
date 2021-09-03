class Sauna < ApplicationRecord
  validates :sex, presence: {message: "性別を選択してください"}
  validates :temperature, inclusion: { in: 1.. ,message: "温度に正しい数字を入力してください (1〜)"}
  validates :intern , inclusion: { in: 1..99 ,message: "収容人数に正しい数字を入力してください (1〜99)"}
  belongs_to :facility
  enum sex: { "無性別": 0, "男性": 1, "女性": 2 }
end
