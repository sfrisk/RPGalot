class CreateCharacters < ActiveRecord::Migration
  def self.up
    create_table :characters do |t|
      t.integer :user_id, :null => false
			t.integer :campaign_id, :null=>false
      t.string :first_name, :null => false
      t.string :last_name, :null => false
      t.integer :age
      t.string :gender
      t.integer :height
      t.integer :weight
      t.string :eyes
      t.string :hair

      t.timestamps
    end
  end

  def self.down
    drop_table :characters
  end
end
