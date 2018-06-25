class AddFieldsToWriteIns < ActiveRecord::Migration[5.1]
  def change
    add_column :write_ins, :received, :date
    add_column :write_ins, :expiration, :date
  end
end
