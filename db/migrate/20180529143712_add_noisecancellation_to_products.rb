class AddNoisecancellationToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :noisecancellation, :boolean
  end
end
