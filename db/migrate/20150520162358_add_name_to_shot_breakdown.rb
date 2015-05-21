class AddNameToShotBreakdown < ActiveRecord::Migration
  def change
    add_column :shot_breakdowns, :name, :string
  end
end
