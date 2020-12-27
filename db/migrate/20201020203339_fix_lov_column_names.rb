class FixLovColumnNames < ActiveRecord::Migration[6.0]
  def change
    change_table :lovs do |t|
#      t.rename :table, :tbl
#      t.rename :column, :col
#      t.rename :value, :val
    end
  end
end
