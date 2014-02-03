class CreateGraphics < ActiveRecord::Migration
  def change
    create_table :graphics do |t|
      t.string :image
      t.string :name
      t.text :description
      t.integer :place

      t.timestamps
    end
  end
end
