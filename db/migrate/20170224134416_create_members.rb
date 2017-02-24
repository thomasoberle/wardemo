class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :lastname
      t.string :firstname

      t.timestamps null: false
    end
  end
end
