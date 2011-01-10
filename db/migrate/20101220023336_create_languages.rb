class CreateLanguages < ActiveRecord::Migration
  def self.up
    create_table :languages do |t|
      t.string :title, :null => false
      t.string :alphabet, :null => false
			t.integer :game_id, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :languages
  end
end
