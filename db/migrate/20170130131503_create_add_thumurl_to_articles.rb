class CreateAddThumurlToArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :add_thumurl_to_articles do |t|
      t.text :thumurl

      t.timestamps
    end
  end
end
