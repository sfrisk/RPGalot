class AddingGameId < ActiveRecord::Migration
  def self.up
		add_column :alignments, :game_id, :integer, :default =>1
		add_column :feats, :game_id, :integer,  :default =>1
		add_column :klasses, :game_id, :integer,  :default =>1
		add_column :races, :game_id, :integer,  :default =>1
		add_column :weapons, :game_id, :integer, :default =>1
  end

  def self.down
		remove_column :alignments, :game_id
		remove_column :feats, :game_id
		remove_column :klasses, :game_id
		remove_column :races, :game_id
		remove_column :weapons, :game_id
  end
end
