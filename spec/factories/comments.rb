FactoryBot.define do
  factory :comment do
    comment_user_data = FactoryBot.create(:comment_user)
    article_data = FactoryBot.create(:article)

    content "MyText"
    comment_user comment_user_data
    article article_data
  end
end