class Comment < ApplicationRecord
  validates :content, presence: true

  belongs_to :comment_user
  belongs_to :article
end
