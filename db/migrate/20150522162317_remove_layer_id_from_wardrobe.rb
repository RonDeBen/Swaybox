class RemoveLayerIdFromWardrobe < ActiveRecord::Migration
  def change
    remove_reference :props, :layer, index: true
  end
end
