class CharacterIds < ActiveRecord::Migration
  def self.up
		rename_column(:characters, :race, :race_id)
		rename_column(:characters, :klass, :klass_id)
		rename_column(:characters, :alignment, :alignment_id)
		rename_column(:characters, :deity, :deity_id)
		change_column(:characters, :race_id, :integer)
		change_column(:characters, :klass_id, :integer)
		change_column(:characters, :alignment_id, :integer)
		change_column(:characters, :deity_id, :integer)
		
		
  end

  def self.down
		change_column(:characters, :race_id, :string)
		change_column(:characters, :klass_id, :string)
		change_column(:characters, :alignment_id, :string)
		change_column(:characters, :deity_id, :string)
		rename_column(:characters, :race_id, :race)
		rename_column(:characters, :klass_id, :klass)
		rename_column(:characters, :alignment_id, :alignment)
		rename_column(:characters, :deity_id, :deity)
  end
end
