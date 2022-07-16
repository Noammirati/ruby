class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.integer :number
      t.string :departure_airport
      t.string :arrival_airport
      t.integer :business_class_seats
      t.integer :economy_class_seats
      t.datetime :departure_date
      t.integer :duration
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
