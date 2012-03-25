class CreateLocTimes < ActiveRecord::Migration
  def change
    create_table :loc_times do |t|
      t.string :at_loc_time

      t.timestamps
    end
  end
end
