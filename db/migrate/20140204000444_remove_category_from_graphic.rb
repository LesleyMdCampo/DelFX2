class RemoveCategoryFromGraphic < ActiveRecord::Migration
  def change
    remove_column :graphics, :category, :string
  end
end
