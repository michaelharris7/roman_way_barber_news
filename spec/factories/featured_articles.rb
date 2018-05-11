FactoryBot.define do
  factory :featured_article do
    article_data = FactoryBot.create(:article)

    title "MyString"
    content "MyString"
    article article_data
  end
end