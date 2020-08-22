class CreateLovs < ActiveRecord::Migration[6.0]
  def change
    create_table :lovs do |t|
      t.string :table
      t.string :column

      t.timestamps
    end
  end
end
