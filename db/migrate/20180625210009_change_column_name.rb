class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :write_ins, :vaccinations_id, :vaccination_id 
  end
end
