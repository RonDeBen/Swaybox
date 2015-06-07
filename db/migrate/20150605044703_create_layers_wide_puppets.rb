class CreateLayersWidePuppets < ActiveRecord::Migration
  def change
    create_table :layers_wide_puppets do |t|
      t.integer :layer_id
      t.integer :wide_puppet_id
    end
  end
end
