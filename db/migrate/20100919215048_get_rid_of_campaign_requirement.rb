class GetRidOfCampaignRequirement < ActiveRecord::Migration
  def self.up
		change_column(:characters, :campaign_id, :integer, :null => true)
  end

  def self.down
		change_column(:characters, :campaign_id, :integer,:null => true)
  end
end
