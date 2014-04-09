# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Article.destroy_all

(1..10).each do |i|
  Article.create(
    "id" => i,
    "date" => Date.today - i,
    "title" => "Article #{i}",
    "permalink" => "article-#{i}",
    "content" => "This is the content of an article",
    "language" => "cz",
    "published" => true,
    "menu_id" => nil,
    "gallery_id" => nil
  )
end
