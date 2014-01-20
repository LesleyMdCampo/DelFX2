class CreateSBoards < ActiveRecord::Migration
  def change
    create_table :s_boards do |t|
      t.references :styleboard, index: true
      t.string :image_url
      t.integer :place

      t.timestamps
    end
  end
end
