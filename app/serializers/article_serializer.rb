class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :date, :title, :permalink, :content, :language, :published, :featured, :menu_id, :gallery_id
end
