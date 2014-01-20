class CreateStyleboards < ActiveRecord::Migration
  def change
    create_table :styleboards do |t|
      t.text :description
      t.string :image
      t.integer :place
      t.string :name

      t.timestamps
    end
  end
end
