class AddCategoryToGraphic < ActiveRecord::Migration
  def change
    add_column :graphics, :category, :string
  end
end
