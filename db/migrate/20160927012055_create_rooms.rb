class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.text :description
      t.integer :accommodates
      t.integer :bathroom
      t.float :price
      t.boolean :kitchen
      t.boolean :internet
      t.boolean :pets
      t.references :user, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
