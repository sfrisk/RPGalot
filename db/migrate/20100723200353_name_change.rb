class NameChange < ActiveRecord::Migration
  def self.up
		rename_column(:characters, :strength, :STR);
		rename_column(:characters, :dexterity, :DEX);
		rename_column(:characters, :constitution, :CON);
		rename_column(:characters, :intelligence, :INT);
		rename_column(:characters, :wisdom, :WIS);
		rename_column(:characters, :charisma, :CHA);
		rename_column(:characters, :first_name, :name);
		remove_column(:characters, :last_name);
  end

  def self.down
		rename_column(:characters, :STR, :strength);
		rename_column(:characters, :DEX, :dexterity);
		rename_column(:characters, :CON, :constitution);
		rename_column(:characters, :INT, :intelligence);
		rename_column(:characters, :WIS, :wisdom);
		rename_column(:characters, :CHA, :charisma);
		rename_column(:characters, :name, :first_name);
		add_column(:characters, :last_name);
  end
end
