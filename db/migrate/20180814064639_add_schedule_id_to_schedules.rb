class AddScheduleIdToSchedules < ActiveRecord::Migration[5.1]
  def change
    add_column :schedules, :schedule_id, :integer
  end
end
