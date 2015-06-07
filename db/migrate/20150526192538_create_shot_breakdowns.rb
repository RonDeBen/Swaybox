class CreateShotBreakdowns < ActiveRecord::Migration
  def change
    create_table :shot_breakdowns do |t|
      t.string :title
      t.integer :set
      t.text :description
      t.integer :layers

      t.timestamps null: false
    end
  end
end
