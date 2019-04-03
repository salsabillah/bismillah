class CreateBookdetails < ActiveRecord::Migration[5.2]
  def change
    create_table :bookdetails do |t|
      t.string :name
      t.string :email
      t.integer :amount

      t.timestamps
    end
    add_index :bookdetails, :email, unique: true
  end
end
