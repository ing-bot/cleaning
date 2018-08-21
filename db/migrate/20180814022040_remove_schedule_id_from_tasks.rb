class RemoveScheduleIdFromTasks < ActiveRecord::Migration[5.1]
  def change
    remove_column :tasks, :schedule_id, :integer
  end
end
