class Remove < ActiveRecord::Migration
  def change
  	remove_reference :mc_puppets, :layer, index: true
  end
end
