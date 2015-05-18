class CreateShotBreakdowns < ActiveRecord::Migration
  def change
    create_table :shot_breakdowns do |t|
      t.integer :Layers
      t.text :description
      t.integer :set

      t.timestamps null: false
    end
  end
end
