class CreateRaces < ActiveRecord::Migration
  def self.up
    create_table :races do |t|
      t.string :title, :null => false
      t.integer :speed, :null => false
      t.string :size, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :races
  end
end
