class Sauna < ApplicationRecord
  validates :sex_id, presence: {message: "の性別を選択してください"}
  validates :temperature,:intern , inclusion: { in: 1.. ,message: "を入力をしてください。"}
  validates :intern , inclusion: { in: 1.. ,message: "を入力をしてください。"}
  belongs_to :facility
  belongs_to :sex
end
