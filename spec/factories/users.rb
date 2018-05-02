FactoryBot.define do
  sequence :user_id do |n|
    "#{n}"
  end

  factory :user do
    user_id { generate :user_id }
    user_type "USER"
    user_name "Anonymous"
  end
end