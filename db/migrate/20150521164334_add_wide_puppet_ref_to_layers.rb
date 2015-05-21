class AddWidePuppetRefToLayers < ActiveRecord::Migration
  def change
    add_reference :layers, :wide_puppet, index: true
    add_foreign_key :layers, :wide_puppets
  end
end
