class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.date :date
      t.string :title
      t.string :permalink
      t.text :content
      t.string :language
      t.boolean :published
      t.integer :menu_id
      t.integer :gallery_id

      t.timestamps
    end
  end
end
