class CreateLayers < ActiveRecord::Migration
  def change
    create_table :layers do |t|
      t.string :name
      t.string :time
      t.string :transition
      t.string :cam
      t.string :difficulty
      t.integer :WidePuppets
      t.integer :McPuppets
      t.string :playOption
      t.integer :Props
      t.integer :Wardrobe
      t.string :tracking
      t.string :PColor
      t.string :notes

      t.timestamps null: false
    end
  end
end
