class CreateKlasses < ActiveRecord::Migration
  def self.up
    create_table :klasses do |t|
      t.string :title, :null => false
      t.integer :hit_die, :null => false
      t.integer :skill_points, :null => false
      t.integer :attack_bonus, :null => false
      t.boolean :fort_save, :null => false
      t.boolean :ref_save, :null => false
      t.boolean :will_save, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :klasses
  end
end
