FactoryBot.define do
  factory :post do
    title "Sample title"
    content "Some content"
    ref_source_url "http://www.google.com"
  end
end