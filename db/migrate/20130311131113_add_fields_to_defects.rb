class AddFieldsToDefects < ActiveRecord::Migration
  def change
    add_column :defects, :field1, :string
    add_column :defects, :field2, :string
    add_column :defects, :field3, :string
    add_column :defects, :field4, :string
    add_column :defects, :field5, :string
  end
end
