class CreateWindValues < ActiveRecord::Migration[6.0]
  def change
    create_table :wind_values do |t|
      t.string :city
      t.string :state
      t.float :speed
    end
  end
end
