class CreateSolars < ActiveRecord::Migration[6.0]
  def change
    create_table :solars do |t|
      t.float :ac_annual
      t.float :solrad_annual
      t.references :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
