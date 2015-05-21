class AddMidClosePuppetRefToLayers < ActiveRecord::Migration
  def change
    add_reference :layers, :mc_puppet, index: true
    add_foreign_key :layers, :mc_puppets
  end
end
