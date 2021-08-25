class Chair < ApplicationRecord
  validates :sex_id, presence: {message: "性別を選択"}
  validates :rest_area_id, presence: {message: "場所をを選択"}
  validates :bath,:deck,:relax,:bench,:bench_non_backrest, inclusion: { in: 1..99 ,message: "『空欄』か『数字』を入力(1〜99)"},allow_blank: true
  belongs_to :facility
  belongs_to :sex
  belongs_to :rest_area
end
