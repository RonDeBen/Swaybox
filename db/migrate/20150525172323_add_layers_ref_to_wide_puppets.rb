class AddLayersRefToWidePuppets < ActiveRecord::Migration
  def change
    add_reference :wide_puppets, :layer, index: true
    add_foreign_key :wide_puppets, :layers
  end
end
