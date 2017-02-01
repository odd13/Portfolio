class AddThumurlToArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :thumbnail_url, :text
  end
end
