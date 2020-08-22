class AddValueToLovs < ActiveRecord::Migration[6.0]
  def change
    add_column :lovs, :value, :string
  end
end
