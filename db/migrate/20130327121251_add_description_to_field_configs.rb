class AddDescriptionToFieldConfigs < ActiveRecord::Migration
  def change
    add_column :field_configs, :description, :string
  end
end
