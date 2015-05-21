class RenameColumn < ActiveRecord::Migration
  def change
  	rename_column :layers, :time, :seconds
  end
end
