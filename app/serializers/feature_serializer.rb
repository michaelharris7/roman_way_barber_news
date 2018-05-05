class FeatureSerializer < ActiveModel::Serializer
  attributes :id, :article_id, :title, :content
end
