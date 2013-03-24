class CreateUsersdefects < ActiveRecord::Migration
  def change
    create_table :usersdefects do |t|
      t.integer :user_id
      t.integer :defect_id

      t.timestamps
    end
  end
end
