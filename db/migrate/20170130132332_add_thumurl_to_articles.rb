class AddThumurlToArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :thumurl, :text
  end
end
