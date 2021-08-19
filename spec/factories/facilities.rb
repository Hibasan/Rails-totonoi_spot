FactoryBot.define do
  factory :facility1,class:Facility do
    name{'おふろの国'}
    prefecture{'神奈川県'}
    address{'横浜市鶴見区下末吉２丁目２５−２３'}
  end
  factory :facility2,class:Facility do
    name{'朝日湯源泉 ゆいる'}
    prefecture{'神奈川県'}
    address{'川崎市川崎区鋼管通３丁目１−２'}
  end
  factory :facility3,class:Facility do
    name{'宮前平源泉 湯けむりの庄'}
    prefecture{'神奈川県'}
    address{'川崎市宮前区宮前平２丁目１３−３'}
  end
  factory :facility4,class:Facility do
    name{'綱島源泉 湯けむりの庄'}
    prefecture{'神奈川県'}
    address{'横浜市港北区樽町３丁目７−６１'}
  end
  factory :facility5,class:Facility do
    name{'みうら湯'}
    prefecture{'東京都'}
    address{'横浜市南区中里１丁目２５−１'}
  end
end
