class CreateWeapons < ActiveRecord::Migration
  def self.up
    create_table :weapons do |t|
      t.string :title, :null => false
      t.integer :cost
      t.string :damage_small, :null => false
      t.string :damage_medium, :null => false
      t.string :critical, :null => false
      t.integer :range
      t.integer :weight
      t.string :proficiency

      t.timestamps
    end
  end

  def self.down
    drop_table :weapons
  end
end
