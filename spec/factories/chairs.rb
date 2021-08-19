FactoryBot.define do
  factory :chair1,class:Chair do
    sex_id{Sex.find_by(sex: "男性").id}
    rest_area_id{RestArea.find_by(area: "室内").id}
    deck{3}
    facility_id{Facility.find_by(name: "おふろの国").id}
  end
  factory :chair2,class:Chair do
    sex_id{Sex.find_by(sex: "男性").id}
    rest_area_id{RestArea.find_by(area: "室外").id}
    deck{3}
    relax{2}
    facility_id{Facility.find_by(name: "おふろの国").id}
  end
  factory :chair3,class:Chair do
    sex_id{Sex.find_by(sex: "女性").id}
    rest_area_id{RestArea.find_by(area: "室内").id}
    deck{5}
    facility_id{Facility.find_by(name: "朝日湯源泉 ゆいる").id}
  end
  factory :chair4,class:Chair do
    sex_id{Sex.find_by(sex: "女性").id}
    rest_area_id{RestArea.find_by(area: "室外").id}
    deck{2}
    relax{2}
    facility_id{Facility.find_by(name: "朝日湯源泉 ゆいる").id}
  end
  factory :chair5,class:Chair do
    sex_id{Sex.find_by(sex: "男性").id}
    rest_area_id{RestArea.find_by(area: "室外").id}
    deck{3}
    relax{3}
    bench{1}
    facility_id{Facility.find_by(name: "宮前平源泉 湯けむりの庄").id}
  end
  factory :chair6,class:Chair do
    sex_id{Sex.find_by(sex: "女性").id}
    rest_area_id{RestArea.find_by(area: "室外").id}
    relax{3}
    bench{1}
    facility_id{Facility.find_by(name: "宮前平源泉 湯けむりの庄").id}
  end
  factory :chair7,class:Chair do
    sex_id{Sex.find_by(sex: "男性").id}
    rest_area_id{RestArea.find_by(area: "室内").id}
    bath{4}
    facility_id{Facility.find_by(name: "綱島源泉 湯けむりの庄").id}
  end
  factory :chair8,class:Chair do
    sex_id{Sex.find_by(sex: "男性").id}
    rest_area_id{RestArea.find_by(area: "室外").id}
    bench{3}
    deck{2}
    facility_id{Facility.find_by(name: "綱島源泉 湯けむりの庄").id}
  end
  factory :chair9,class:Chair do
    sex_id{Sex.find_by(sex: "男性").id}
    rest_area_id{RestArea.find_by(area: "室内").id}
    deck{6}
    facility_id{Facility.find_by(name: "みうら湯").id}
  end
  factory :chair10,class:Chair do
    sex_id{Sex.find_by(sex: "女性").id}
    rest_area_id{RestArea.find_by(area: "室内").id}
    deck{3}
    relax{3}
    facility_id{Facility.find_by(name: "みうら湯").id}
  end
end
