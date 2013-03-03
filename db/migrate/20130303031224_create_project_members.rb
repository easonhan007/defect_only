class CreateProjectMembers < ActiveRecord::Migration
  def change
    create_table :project_members do |t|
      t.integer :project_id
      t.integer :user_id

      t.timestamps
    end
  end
end
