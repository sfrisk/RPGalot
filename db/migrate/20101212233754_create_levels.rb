class CreateLevels < ActiveRecord::Migration
  def self.up
    create_table :levels do |t|
      t.integer :name, :null => false
      t.integer :xp, :null => false
      t.integer :base_save_bonus_good
      t.integer :base_save_bonus_poor
      t.text :base_attack_bonus_good
      t.text :base_attack_bonus_average
      t.text :base_attack_bonus_poor
      t.integer :class_skill_max_ranks
      t.decimal :cross_class_skill_max_ranks
      t.boolean :new_feat
      t.boolean :ability_score_increases
      t.integer :game_id, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :levels
  end
end
