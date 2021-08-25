class Chair < ApplicationRecord
  validates :sex_id, presence: {message: "性別を選択してください"}
  validates :rest_area_id, presence: {message: "室内/室外をを選択してください"}
  validates :bath,:deck,:relax,:bench,:bench_non_backrest, inclusion: { in: 1..99 ,message: "正しい数値を入力してください(1〜99)"},allow_blank: true
  belongs_to :facility
  belongs_to :sex
  belongs_to :rest_area
end
