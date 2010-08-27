class CreateKlassSkills < ActiveRecord::Migration
  def self.up
    create_table :klass_skills do |t|
      t.integer :klass_id, :null => false
      t.integer :skill_id, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :klass_skills
  end
end
