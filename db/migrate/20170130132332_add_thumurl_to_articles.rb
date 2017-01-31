class AddThumurlToArticles < ActiveRecord::Migration[5.0]
  def change
    # TODO: rename to thumb_url or thumbnail_url
    add_column :articles, :thumurl, :text
  end
end
