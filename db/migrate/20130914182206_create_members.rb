class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.integer :user_id

      t.timestamps
    end
    add_index :members, [:user_id]
  end
end
