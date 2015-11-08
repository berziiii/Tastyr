class AddProfileIdReferenceToAllergies < ActiveRecord::Migration
  def change
    add_reference :allergies, :profile, index: true, foreign_key: true
  end
end
