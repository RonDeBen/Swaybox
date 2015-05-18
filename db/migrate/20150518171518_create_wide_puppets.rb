class CreateWidePuppets < ActiveRecord::Migration
  def change
    create_table :wide_puppets do |t|
      t.string :name
      t.integer :status

      t.timestamps null: false
    end
  end
end
