class Sauna < ApplicationRecord
  validates :sex_id, presence: {message: "性別を選択してください"}
  validates :temperature, inclusion: { in: 1.. ,message: "正しい数字を入力してください (1〜)"}
  validates :intern , inclusion: { in: 1..99 ,message: "正しい数字を入力してください (1〜99)"}
  belongs_to :facility
  belongs_to :sex
end
