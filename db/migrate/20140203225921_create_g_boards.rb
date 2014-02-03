class CreateGBoards < ActiveRecord::Migration
  def change
    create_table :g_boards do |t|
      t.references :graphic, index: true
      t.string :image
      t.integer :place

      t.timestamps
    end
  end
end
