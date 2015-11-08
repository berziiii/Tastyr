class CreateAllergychoices < ActiveRecord::Migration
  def change
    create_table :allergychoices do |t|

      t.timestamps null: false
    end
  end
end
