class CreateShops < ActiveRecord::Migration[5.1]
  def change
    create_table :shops do |t|
      t.string :name
      t.references :landlord, foreign_key: true

      t.timestamps
    end
    add_index :shops, :name
  end
end
