class CreateMcStatuses < ActiveRecord::Migration
  def change
    create_table :mc_statuses do |t|
      t.string :stage

      t.timestamps null: false
    end
  end
end
