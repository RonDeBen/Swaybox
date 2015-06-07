class CreateLayers < ActiveRecord::Migration
  def change
    create_table :layers do |t|
      t.string :title
      t.integer :seconds
      t.integer :takes
      t.string :transition
      t.string :cam
      t.integer :difficulty
      t.integer :wide_puppets
      t.integer :mc_puppets
      t.string :play_option
      t.integer :props
      t.integer :wardrobe
      t.string :tracking
      t.string :pcolor
      t.text :notes

      t.timestamps null: false
    end
  end
end
