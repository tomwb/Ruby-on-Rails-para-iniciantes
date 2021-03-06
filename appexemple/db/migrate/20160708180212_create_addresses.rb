class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :zip
      t.references :customer, index: true

      t.timestamps
    end
  end
end
