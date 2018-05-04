class CommentUser < ApplicationRecord
  validates :user_id, presence: true
  validates :user_type, presence: true
  validates :user_name, presence: true
end
