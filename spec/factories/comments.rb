FactoryBot.define do
  factory :comment do
    content "MyText"
    comment_user
    article
  end
end