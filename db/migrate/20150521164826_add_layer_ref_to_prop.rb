class AddLayerRefToProp < ActiveRecord::Migration
  def change
    add_reference :prop, :layer, index: true
    add_foreign_key :prop, :layers
  end
end
