class Comment < ApplicationRecord
  belongs_to :comment_user
  belongs_to :article
end
