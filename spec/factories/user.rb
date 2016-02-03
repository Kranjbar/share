FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "g#{n}@g.com" }
    password "testtest"
    first_name 'Jon'
    last_name 'Snow'
  end
end