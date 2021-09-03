class Chair < ApplicationRecord
  validates :sex, presence: {message: "性別を選択してください"}
  validates :rest_area, presence: {message: "室内/室外をを選択してください"}
  validates :bath,:deck,:relax,:bench,:bench_non_backrest, inclusion: { in: 1..99 ,message: "正しい数値を入力してください(1〜99)"},allow_blank: true
  belongs_to :facility
  enum sex: { "無性別": 0, "男性": 1, "女性": 2 }
  enum rest_area: { "室内": 1, "室外": 2 }
end
