class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.decimal :price
      t.boolean :workout
      t.boolean :wireless
      t.integer :age
      t.references :sub_category, foreign_key: true

      t.timestamps
    end
  end
end
