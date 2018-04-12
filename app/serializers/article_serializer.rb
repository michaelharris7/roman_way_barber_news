class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :ref_source_url, :updated_at
end