class AddColumnNameToDietchoices < ActiveRecord::Migration
  def change
    add_column :dietchoices, :name, :string
  end
end
