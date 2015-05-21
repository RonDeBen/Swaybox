class CreateArrangements < ActiveRecord::Migration
  def change
    create_table :arrangements do |t|
      t.integer :shotbreakdown
      t.datetime :day

      t.timestamps null: false
    end
  end
end
