class AddCapacityAndTiltToSolars < ActiveRecord::Migration[6.0]
  def change
    change_table :solars do |t|
      t.float :capacity
      t.float :tilt
    end
  end
end
