FactoryBot.define do
  factory :area1,class:RestArea do
    id{1}
    area{'室内'}
  end
  factory :area2,class:RestArea do
    id{2}
    area{'室外'}
  end
end
