class AddShotBreakdownIdToLayers < ActiveRecord::Migration
  def change
    add_column :layers, :shot_breakdown_id, :integer
  end
end
