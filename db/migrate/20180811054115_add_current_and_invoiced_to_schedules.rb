class AddCurrentAndInvoicedToSchedules < ActiveRecord::Migration[5.1]
  def change
    add_column :schedules, :current, :boolean
    add_column :schedules, :invoiced, :boolean
  end
end
