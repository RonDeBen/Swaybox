class RemoveDifficultyFromLayers < ActiveRecord::Migration
  def change
    remove_column :layers, :difficulty, :string
  end
end
