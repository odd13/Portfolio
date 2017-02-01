class CreateSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :skills do |t|
      t.string :name,         null: false
      t.boolean :is_active,   default: true, null: false
      t.integer :rank,  default: 1, null: false

      t.timestamps
    end
  end
end
