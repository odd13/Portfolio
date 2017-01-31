class CreateSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :skills do |t|
      t.string :name,         null: false
      t.boolean :is_active,   default: true, null: false

      # TODO: consider a rank column, such that you can rate how competent
      # you are out of 5.
      t.timestamps
    end
  end
end
