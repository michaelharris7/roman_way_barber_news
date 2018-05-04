class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content
  has_one :comment_user
  has_one :article
end
