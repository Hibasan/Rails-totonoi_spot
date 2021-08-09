class Chair < ApplicationRecord
  belongs_to :facility
  belongs_to :sex
  belongs_to :rest_area
end
