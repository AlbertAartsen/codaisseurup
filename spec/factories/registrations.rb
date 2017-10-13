FactoryGirl.define do
  factory :registration do
    user "bobs"
    event "bob"
    price 1
    guest_count 1
    status "MyString"
  end
end
