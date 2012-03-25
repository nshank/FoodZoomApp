class CreateTruckLocByDates < ActiveRecord::Migration
  def change
    create_table :truck_loc_by_dates do |t|
      t.integer :truck_id
      t.integer :location_id
      t.integer :loc_time_id
      t.string :location_date

      t.timestamps
    end
  end
end
