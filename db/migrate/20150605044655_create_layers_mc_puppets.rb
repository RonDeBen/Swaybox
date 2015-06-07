class CreateLayersMcPuppets < ActiveRecord::Migration
  def change
    create_table :layers_mc_puppets do |t|
      t.integer :layer_id
      t.integer :mc_puppet_id
    end
  end
end
