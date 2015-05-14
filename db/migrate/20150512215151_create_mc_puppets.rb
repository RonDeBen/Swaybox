class CreateMcPuppets < ActiveRecord::Migration
  def change
    create_table :mc_puppets do |t|
      t.string :name
      t.integer :status

      t.timestamps null: false
    end
  end
end