class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.string :make
      t.string :price
      t.references :user, foreign_key: true
      t.string :year_made
      t.string :mileage
      t.string :engine_size
      t.string :car_model
      t.string :transmission
      t.string :bhp
      t.string :fuel_type
      t.string :seats
      t.string :doors

      t.timestamps
    end
  end
end
