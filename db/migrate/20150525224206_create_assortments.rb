class CreateAssortments < ActiveRecord::Migration
  def change
    create_table :assortments do |t|
      t.integer :layer_id
      t.integer :wide_puppet_id
      t.integer :mc_puppet_id
      t.integer :prop_id

      t.timestamps null: false
    end
  end
end
