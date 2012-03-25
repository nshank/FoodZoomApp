class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :address
      t.float :lon
      t.float :lat

      t.timestamps
    end
  end
end
