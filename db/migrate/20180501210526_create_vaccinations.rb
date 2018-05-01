class CreateVaccinations < ActiveRecord::Migration[5.1]
  def change
    create_table :vaccinations do |t|
      t.string :title
      t.text :received
      t.text :expiration

      t.timestamps
    end
  end
end
