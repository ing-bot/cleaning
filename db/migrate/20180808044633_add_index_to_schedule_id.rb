class AddIndexToScheduleId < ActiveRecord::Migration[5.1]
  def change
    add_index :tasks, :schedule_id
  end
end
