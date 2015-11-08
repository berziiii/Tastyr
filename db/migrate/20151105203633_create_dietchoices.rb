class CreateDietchoices < ActiveRecord::Migration
  def change
    create_table :dietchoices do |t|

      t.timestamps null: false
    end
  end
end
