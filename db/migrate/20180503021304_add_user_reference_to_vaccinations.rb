class AddUserReferenceToVaccinations < ActiveRecord::Migration[5.1]
  def change
    add_reference :vaccinations, :user, foreign_key: true
  end
end
 