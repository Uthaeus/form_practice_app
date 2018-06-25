class CreateWriteIns < ActiveRecord::Migration[5.1]
  def change
    create_table :write_ins do |t|
      t.string :title
      t.references :vaccinations, foreign_key: true, on_delete: :cascade

      t.timestamps
    end
  end
end
