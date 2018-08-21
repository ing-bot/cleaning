class CreateSchedules < ActiveRecord::Migration[5.1]
  def change
    create_table :schedules do |t|
      t.date :date
      t.string :day
      t.time :time_in
      t.time :time_out

      t.timestamps
    end
  end
end
