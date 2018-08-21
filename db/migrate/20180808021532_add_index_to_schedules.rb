class AddIndexToSchedules < ActiveRecord::Migration[5.1]
  def change
    add_index :schedules, :date
  end
end
