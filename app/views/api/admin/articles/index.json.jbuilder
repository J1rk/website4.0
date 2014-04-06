json.array!(@articles) do |article|
  json.extract! article, :id, :date, :title, :permalink, :content, :language, :published, :menu_id, :gallery_id
  json.url article_url(article, format: :json)
end
