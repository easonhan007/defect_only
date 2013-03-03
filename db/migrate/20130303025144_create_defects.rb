class CreateDefects < ActiveRecord::Migration
  def change
    create_table :defects do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
