class AddDietchoiceIdReferenceToDiets < ActiveRecord::Migration
  def change
    add_reference :diets, :dietchoice, index: true, foreign_key: true
  end
end
