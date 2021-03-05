class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :name, null: false
      t.integer :member_id, null: false
      t.string :shipping_address, null: false
      t.string :postal_code, null: false

      t.timestamps
    end
  end
end
