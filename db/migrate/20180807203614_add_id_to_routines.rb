class AddIdToRoutines < ActiveRecord::Migration[5.1]
  def change
    add_column :routines, :id, :integer
  end
end
