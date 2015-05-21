class AddTakesToShotBreakdown < ActiveRecord::Migration
  def change
    add_column :layers, :takes, :integer
  end
end
