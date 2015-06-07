class CreateLayersProps < ActiveRecord::Migration
  def change
    create_table :layers_props do |t|
      t.integer :layer_id
      t.integer :prop_id
    end
  end
end
