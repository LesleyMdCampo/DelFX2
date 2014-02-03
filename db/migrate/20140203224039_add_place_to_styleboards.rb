class AddPlaceToStyleboards < ActiveRecord::Migration
  def change
    add_column :styleboards, :place, :integer
  end
end
