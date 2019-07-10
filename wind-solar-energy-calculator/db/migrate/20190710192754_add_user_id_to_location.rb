class AddUserIdToLocation < ActiveRecord::Migration[6.0]
  def change
    change_table :locations do |t|
      t.integer :user_id, foreign_key: true
    end
  end
end
