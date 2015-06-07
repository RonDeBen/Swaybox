class RemoveLayerIdFromWidePuppets < ActiveRecord::Migration
  def change
  	remove_reference :wide_puppets, :layer, index: true
  end
end
