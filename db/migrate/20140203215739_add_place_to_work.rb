class AddPlaceToWork < ActiveRecord::Migration
  def change
    add_column :works, :place, :integer
  end
end
