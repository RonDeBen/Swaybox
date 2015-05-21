class AddLayersRefToMcPuppets < ActiveRecord::Migration
  def change
    add_reference :mc_puppet, :layer, index: true
    add_foreign_key :mc_puppet, :layers
  end
end
