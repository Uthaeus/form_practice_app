class CreateVaccs < ActiveRecord::Migration[5.1]
  def change
    create_table :vaccs do |t|
      t.string :title

      t.timestamps
    end
  end
end
