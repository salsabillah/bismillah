class CreateBookdetails < ActiveRecord::Migration[5.2]
  def change
    create_table :bookdetails do |t|

      t.timestamps
    end
  end
end
