class AddVaccReferenceToVaccinations < ActiveRecord::Migration[5.1]
  def change
    add_reference :vaccinations, :vacc, foreign_key: true
  end
end
