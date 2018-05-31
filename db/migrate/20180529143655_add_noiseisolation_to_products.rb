class AddNoiseisolationToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :noiseisolation, :boolean
  end
end
