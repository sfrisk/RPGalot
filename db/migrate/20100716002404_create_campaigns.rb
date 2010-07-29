class CreateCampaigns < ActiveRecord::Migration
  def self.up
    create_table :campaigns do |t|
      t.string :title, :null => false
      t.text :description
      t.integer :group_id, :null => false
      t.integer :game_master_id, :null => false
      t.integer :max_characters
      t.integer :min_characters
      t.boolean :open, :null => false, :default => true

      t.timestamps
    end
  end

  def self.down
    drop_table :campaigns
  end
end
