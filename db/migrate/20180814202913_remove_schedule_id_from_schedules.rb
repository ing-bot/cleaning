class RemoveScheduleIdFromSchedules < ActiveRecord::Migration[5.1]
  def change
    remove_column :schedules, :schedule_id, :integer
  end
end
