class Article < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true

  has_many :comments, dependent: :destroy
  has_many :featured_articles, dependent: :destroy
end
