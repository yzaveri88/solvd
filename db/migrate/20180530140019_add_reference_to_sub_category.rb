class AddReferenceToSubCategory < ActiveRecord::Migration[5.2]
  def change
    add_reference :sub_categories, :quiz, index: true
  end
end
