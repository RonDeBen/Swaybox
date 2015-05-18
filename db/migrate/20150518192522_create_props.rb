class CreateProps < ActiveRecord::Migration
  def change
    create_table :props do |t|
      t.string :name
      t.integer :status

      t.timestamps null: false
    end
  end
end
