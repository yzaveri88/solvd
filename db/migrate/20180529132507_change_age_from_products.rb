class ChangeAgeFromProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :kids, :boolean
  end
end
