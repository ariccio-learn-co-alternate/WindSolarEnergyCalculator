class AddCityStateColumnsToLocationTable < ActiveRecord::Migration[6.0]
  def change
    change_table :winds do |t|
      t.string :city
      t.string :state
    end
  end
end
