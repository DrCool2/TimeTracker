class AddTaskIdToEntries < ActiveRecord::Migration[6.0]
  def change
    add_reference :entries, :task, null: false, foreign_key: true
  end
end
