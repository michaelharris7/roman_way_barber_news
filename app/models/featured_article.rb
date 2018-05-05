class FeaturedArticle < ApplicationRecord
  validates :article_id, presence: true
  validates :title, presence: true
  validates :content, presence: true
end