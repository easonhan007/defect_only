class AddNameToFieldConfigs < ActiveRecord::Migration
  def change
    add_column :field_configs, :name, :string
  end
end
