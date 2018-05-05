class FeaturedArticle < ApplicationRecord
  validates :article_id, presence: true
  validates :title, presence: true
  validates :content, presence: true

  belongs_to :article
end