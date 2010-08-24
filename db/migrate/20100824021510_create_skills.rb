class CreateSkills < ActiveRecord::Migration
  def self.up
    create_table :skills do |t|
      t.string :name, :null => false
      t.string :fancy_name, :null => false
      t.integer :armor_penalty, :null => false
      t.boolean :need_training, :null => false
      t.string :ability, :null => false
      t.integer :game_id, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :skills
  end
end
