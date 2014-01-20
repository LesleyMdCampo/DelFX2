class CreateStoryboards < ActiveRecord::Migration
  def change
    create_table :storyboards do |t|
      t.string :name
      t.string :description
      t.string :thumbnail_url

      t.timestamps
    end
  end
end
