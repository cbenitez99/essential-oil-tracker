class CreateUserOils < ActiveRecord::Migration[7.0]
  def change
    create_table :user_oils do |t|
      t.string :name
      t.integer :price
      t.integer :amount
      t.integer :user_id

      t.timestamps
    end
  end
end
