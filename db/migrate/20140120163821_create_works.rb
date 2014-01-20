class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :name
      t.string :image
      t.text :description
      t.string :video

      t.timestamps
    end
  end
end
