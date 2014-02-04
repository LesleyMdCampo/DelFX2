class AddVectorToGraphic < ActiveRecord::Migration
  def change
    add_column :graphics, :vector, :boolean, :default => false
  end
end
