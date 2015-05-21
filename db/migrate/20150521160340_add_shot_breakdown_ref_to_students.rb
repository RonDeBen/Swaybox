class AddShotBreakdownRefToStudents < ActiveRecord::Migration
  def change
    add_reference :layers, :shot_breakdown, index: true
    add_foreign_key :layers, :shot_breakdowns
  end
end
