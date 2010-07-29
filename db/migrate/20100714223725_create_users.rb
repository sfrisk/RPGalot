class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :bio
      t.boolean :looking_for_group, :null => false, :default => true
      t.string :prefered_race
      t.string :prefered_class
      t.string :gender
      t.string :eye_color
      t.string :hair_color
      t.string :alignment

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
