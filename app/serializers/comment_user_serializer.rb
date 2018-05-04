class CommentUserSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :user_type, :user_name
end
