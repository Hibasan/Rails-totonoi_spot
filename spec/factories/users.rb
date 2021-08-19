FactoryBot.define do
  factory :user1,class:User do
    name{'おめがシスターズ'}
    email{'test01@email.com'}
    password{'password'}
    confirmed_at{Time.now}
    admin{true}
  end
  factory :user2,class:User do
    name{'あるふぁブラザーズ'}
    email{'test02@email.com'}
    password{'password'}
    confirmed_at{Time.now}
    admin{false}
  end
end
