class AddRoutineIdToSchedules < ActiveRecord::Migration[5.1]
  def change
    add_column :schedules, :routine_id, :integer
  end
end
