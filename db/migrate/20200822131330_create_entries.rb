class CreateEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :entries do |t|
      t.datetime :clocked_in
      t.datetime :clocked_out

      t.timestamps
    end
  end
end
