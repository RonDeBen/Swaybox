class AddPropRefToLayers < ActiveRecord::Migration
  def change
    add_reference :layers, :prop, index: true
    add_foreign_key :layers, :props
  end
end
