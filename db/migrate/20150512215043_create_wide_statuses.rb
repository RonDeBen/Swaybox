class CreateWideStatuses < ActiveRecord::Migration
  def change
    create_table :wide_statuses do |t|
      t.string :status

      t.timestamps null: false
    end
  end
end
