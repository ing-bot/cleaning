class AddScheduleRefToTasks < ActiveRecord::Migration[5.1]
  def change
    add_reference :tasks, :schedule, foreign_key: true
  end
end
