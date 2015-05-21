class AddWardrobeRefToLayers < ActiveRecord::Migration
  def change
    add_reference :layers, :wardrobe, index: true
    add_foreign_key :layers, :wardrobes
  end
end
