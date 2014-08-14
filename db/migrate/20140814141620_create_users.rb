class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.belongs_to :family
      t.string :name
      t.string :presence
      t.integer :family_id

      t.timestamps
    end
    add_index :users, :family_id
  end
end
