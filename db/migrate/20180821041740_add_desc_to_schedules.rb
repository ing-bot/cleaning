class AddDescToSchedules < ActiveRecord::Migration[5.1]
  def change
    add_column :schedules, :desc, :string
  end
end
