class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :action
      t.string :room
      t.string :surface
      t.string :option

      t.timestamps
    end
  end
end
