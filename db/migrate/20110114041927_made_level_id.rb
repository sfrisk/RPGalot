class MadeLevelId < ActiveRecord::Migration
  def self.up
			rename_column(:characters, :level, :level_id)
  end

  def self.down
	rename_column(:characters, :level_id, :level)
  end
end
