class AddLayerRefToWardrobe < ActiveRecord::Migration
  def change
    add_reference :wardrobe, :layer, index: true
    add_foreign_key :wardrobe, :layers
  end
end
