class CreateKlassAlignments < ActiveRecord::Migration
  def self.up
    create_table :klass_alignments do |t|
      t.integer :klass_id, :null => false
      t.integer :alignment_id, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :klass_alignments
  end
end
