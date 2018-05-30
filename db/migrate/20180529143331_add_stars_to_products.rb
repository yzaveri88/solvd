class AddStarsToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :stars, :integer
  end
end
