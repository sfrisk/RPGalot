class CreateCharacterFeats < ActiveRecord::Migration
  def self.up
    create_table :character_feats do |t|
      t.integer :character_id, :null => false
      t.integer :feat_id, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :character_feats
  end
end
