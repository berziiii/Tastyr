class AddAllergychoiceIdReferenceToAllergies < ActiveRecord::Migration
  def change
    add_reference :allergies, :allergychoice, index: true, foreign_key: true
  end
end
