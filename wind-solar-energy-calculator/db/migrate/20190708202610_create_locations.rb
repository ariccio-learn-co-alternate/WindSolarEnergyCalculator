class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :address
      t.string :latitude
      t.string :longitude
      t.integer :solar_id
      t.integer :wind_id

      t.timestamps
    end
  end
end
