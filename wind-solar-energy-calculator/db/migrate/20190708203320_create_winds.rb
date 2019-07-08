class CreateWinds < ActiveRecord::Migration[6.0]
  def change
    create_table :winds do |t|
      t.float :speed
      t.references :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
