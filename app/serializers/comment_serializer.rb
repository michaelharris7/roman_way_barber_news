class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :created_at, :updated_at
  has_one :comment_user
  has_one :article
end
