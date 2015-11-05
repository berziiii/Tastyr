class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :diet
      t.string :allergy

      t.timestamps null: false
    end
  end
end
