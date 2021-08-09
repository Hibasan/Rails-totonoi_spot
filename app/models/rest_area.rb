class RestArea < ApplicationRecord
  has_many :chairs
  enum area: { "室内": 1, "室外": 2 }
end
