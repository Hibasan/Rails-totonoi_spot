class Sex < ApplicationRecord
    has_many :saunas
    has_many :water_baths
    has_many :chairs
    enum sex: { "無性別": 0, "男性": 1, "女性": 2 }
end
