class CreateAddThumnailurlToArticals < ActiveRecord::Migration[5.0]
  def change
    create_table :add_thumnailurl_to_articals do |t|
      t.text :thumurl

      t.timestamps
    end
  end
end
