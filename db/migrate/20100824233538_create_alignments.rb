class CreateAlignments < ActiveRecord::Migration
  def self.up
    create_table :alignments do |t|
      t.string :title, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :alignments
  end
end
