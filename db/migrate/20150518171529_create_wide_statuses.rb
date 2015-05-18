class CreateWideStatuses < ActiveRecord::Migration
  def change
    create_table :wide_statuses do |t|
      t.string :stage

      t.timestamps null: false
    end
  end
end
