class AddDifficultyToLayers < ActiveRecord::Migration
  def change
    add_column :layers, :difficulty, :integer
  end
end
