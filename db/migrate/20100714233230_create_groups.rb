class CreateGroups < ActiveRecord::Migration
  def self.up
    create_table :groups do |t|
      t.string :title
      t.text :description
      t.boolean :invite_only, :null => false, :default => false
			t.integer :created_by_id, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :groups
  end
end
