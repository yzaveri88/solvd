class AddPhotoToSubCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :sub_categories, :photo, :string
  end
end
