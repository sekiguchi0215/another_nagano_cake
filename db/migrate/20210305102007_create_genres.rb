class CreateGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :genres do |t|
      t.integer :name, null: false
      t.integer :valid_invalid_status, null: false

      t.timestamps
    end
  end
end
