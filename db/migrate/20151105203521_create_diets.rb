class CreateDiets < ActiveRecord::Migration
  def change
    create_table :diets do |t|

      t.timestamps null: false
    end
  end
end
