class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :date, :title, :permalink, :content, :language, :published, :menu_id, :gallery_id
end
