class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :nb_passengers
      t.string :class_seats
      t.references :flight, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
