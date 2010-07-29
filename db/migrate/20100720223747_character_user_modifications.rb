class CharacterUserModifications < ActiveRecord::Migration
  def self.up
		add_column :characters, :alignment, :string
		add_column :characters, :deity, :string
		add_column :users, :story_focused, :integer
		add_column :users, :tactical_focused, :integer
		add_column :users, :combat_focused, :integer
		add_column :users, :strategic_focused, :integer
  end

  def self.down
		remove_column :characters, :alignment
		remove_column :characters, :deity
		remove_column :users, :story_focused
		remove_column :users, :tactical_focused
		remove_column :users, :combat_focused
		remove_column :users, :strategic_focused
  end
end
