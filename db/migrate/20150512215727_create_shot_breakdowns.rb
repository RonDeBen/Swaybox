class CreateShotBreakdowns < ActiveRecord::Migration
  def change
    create_table :shot_breakdowns do |t|
      t.string :Description
      t.integer :Set
      t.integer :Layers

      t.timestamps null: false
    end
  end
end
