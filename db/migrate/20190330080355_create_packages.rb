class CreatePackages < ActiveRecord::Migration[5.2]
  def change
    create_table :packages do |t|
      t.string :name
      t.datetime :time
      t.string :iternary
      t.integer :price

      t.timestamps
    end
  end
end
