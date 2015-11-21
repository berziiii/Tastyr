class AddSearchValueColumnToAllergychoices < ActiveRecord::Migration
  def change
    add_column :allergychoices, :search_value, :string
  end
end
