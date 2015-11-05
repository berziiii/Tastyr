class AddReferenceProfileIdToDiets < ActiveRecord::Migration
  def change
    add_reference :diets, :profile, index: true, foreign_key: true
  end
end
