class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.references :room, foreign_key: true
      t.references :user, foreign_key: true
      t.date :startdate
      t.date :enddate
      t.integer :guestcount
      t.boolean :approved

      t.timestamps
    end
  end
end
