class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :ShotBreakdowns

      t.timestamps null: false
    end
  end
end
