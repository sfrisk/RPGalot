class AddingToCharacters < ActiveRecord::Migration
  def self.up
		add_column :characters, :strength, :integer
		add_column :characters, :dexterity, :integer
		add_column :characters, :constitution, :integer
		add_column :characters, :intelligence, :integer
		add_column :characters, :wisdom, :integer
		add_column :characters, :charisma, :integer
		add_column :characters, :race, :string
		add_column :characters, :klass, :string
		add_column :characters, :level, :integer
  end

  def self.down
		remove_column :characters, :strength
		remove_column :characters, :dexterity
		remove_column :characters, :constitution
		remove_column :characters, :intelligence
		remove_column :characters, :wisdom
		remove_column :characters, :charisma
		remove_column :characters, :race
		remove_column :characters, :klass
		remove_column :characters, :level
  end
end
