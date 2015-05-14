class CreateMcStatuses < ActiveRecord::Migration
  def change
    create_table :mc_statuses do |t|
      t.string :status

      t.timestamps null: false
    end
  end
end
