class CreateFieldConfigs < ActiveRecord::Migration
  def change
    create_table :field_configs do |t|
      t.string :field
      t.string :html_type
      t.text :values
      t.string :default
      t.integer :project_id

      t.timestamps
    end
  end
end
