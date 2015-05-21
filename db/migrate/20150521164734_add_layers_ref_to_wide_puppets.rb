class AddLayersRefToWidePuppets < ActiveRecord::Migration
  def change
    add_reference :wide_puppet, :layer, index: true
    add_foreign_key :wide_puppet, :layers
  end
end
