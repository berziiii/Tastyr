class AddColumnNameToAllergychoices < ActiveRecord::Migration
  def change
    add_column :allergychoices, :name, :string
  end
end
