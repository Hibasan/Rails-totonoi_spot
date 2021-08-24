class Chair < ApplicationRecord
  validates :sex_id, presence: true
  validates :sex_id, presence: {message: "の性別を選択してください"}
  validates :rest_area_id, presence: true
  validates :rest_area_id, presence: {message: "の『室内/室外』を選択してください"}
  validates :bath,:deck,:relax,:bench,:bench_non_backrest, inclusion: { in: 1..99 ,message: "空白もしくは1〜99を入力をしてください。"},allow_blank: true
  belongs_to :facility
  belongs_to :sex
  belongs_to :rest_area
end
