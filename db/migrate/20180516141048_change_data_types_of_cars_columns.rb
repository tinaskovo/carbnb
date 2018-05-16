class ChangeDataTypesOfCarsColumns < ActiveRecord::Migration[5.1]
  def change
    change_column :cars, :price, 'integer USING CAST(price AS integer)'
    change_column :cars, :engine_size, 'float USING CAST(engine_size AS float)'
    change_column :cars, :year_made, 'integer USING CAST(year_made AS integer)'
    change_column :cars, :mileage, 'integer USING CAST(mileage AS integer)'
    change_column :cars, :bhp,'integer USING CAST(bhp AS integer)'
    change_column :cars, :seats, 'integer USING CAST(seats AS integer)'
    change_column :cars, :doors,'integer USING CAST(doors AS integer)'
  end
end
