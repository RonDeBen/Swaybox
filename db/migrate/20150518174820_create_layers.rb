class CreateLayers < ActiveRecord::Migration
  def change
    create_table :layers do |t|
      t.string :name
      t.string :time
      t.string :transition
      t.string :cam
      t.string :difficulty
      t.integer :WidePuppet
      t.integer :MidClosePuppet
      t.string :PlayOption
      t.integer :props
      t.integer :wardrobe
      t.string :tracking
      t.string :PColor
      t.text :notes

      t.timestamps null: false
    end
  end
end
