class CreateDeities < ActiveRecord::Migration
  def self.up
    create_table :deities do |t|
      t.string :title, :null => false
      t.string :description
      t.integer :alignment_id, :null => false
      t.string :domains
      t.integer :game_id, :default => 1

      t.timestamps
    end
  end

  def self.down
    drop_table :deities
  end
end
