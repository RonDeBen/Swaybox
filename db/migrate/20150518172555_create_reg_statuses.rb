class CreateRegStatuses < ActiveRecord::Migration
  def change
    create_table :reg_statuses do |t|
      t.string :stage

      t.timestamps null: false
    end
  end
end
