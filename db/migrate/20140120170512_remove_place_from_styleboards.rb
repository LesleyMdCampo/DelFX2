class RemovePlaceFromStyleboards < ActiveRecord::Migration
  def change
    remove_column :styleboards, :place, :integer
  end
end
