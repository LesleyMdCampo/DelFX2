class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.references :storyboard, index: true
      t.string :image_url
      t.integer :place

      t.timestamps
    end
  end
end
