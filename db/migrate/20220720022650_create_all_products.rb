class CreateAllProduct < ActiveRecord::Migration[7.0]
  def change
    create_table :product do |t|
      t.string :name
      t.integer :price
      t.integer :amount

      t.timestamps
    end
  end
end
