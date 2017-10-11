FactoryGirl.define do
  factory :event do
    name              "Event"
    capacity          2
    description       { Faker::Lorem.sentence(40) }
    location          { Faker::Address.city }
    includes_food     true
    includes_drinks   true
    price             { Faker::Commerce.price }
    user_id           { build(:user) }

    trait :active do
      active true
    end

    trait :inactive do
      active false
    end
  end
end
