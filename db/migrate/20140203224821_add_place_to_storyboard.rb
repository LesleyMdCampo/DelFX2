class AddPlaceToStoryboard < ActiveRecord::Migration
  def change
    add_column :storyboards, :place, :integer
  end
end
