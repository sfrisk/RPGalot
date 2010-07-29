class CreateGames < ActiveRecord::Migration
  def self.up
    create_table :games do |t|
      t.string :title, :null => false
			t.string :url, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :games
  end
end
