class CreateOils < ActiveRecord::Migration[7.0]
  def change
    create_table :oils do |t|
      t.string :name
      t.integer :price
      t.integer :user_id

      t.timestamps
    end
  end
end
