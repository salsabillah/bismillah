class CreateReserveds < ActiveRecord::Migration[5.2]
  def change
    create_table :reserveds do |t|
      t.string :name
      t.string :email
      t.integer :pax
      t.string :address
      t.integer :KTP
      t.string :title

      t.timestamps
    end
    add_index :reserveds, :email, unique: true
  end
end
