class CreateFeats < ActiveRecord::Migration
  def self.up
    create_table :feats do |t|
      t.string :title,  :null => false
      t.string :benefit, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :feats
  end
end
