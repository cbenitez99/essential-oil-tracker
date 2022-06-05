class CreateOils < ActiveRecord::Migration[7.0]
  def change
    create_table :oils do |t|
      t.string :name
      t.integer :price

      t.timestamps
    end
  end
end
