class CreateQRCodes < ActiveRecord::Migration[5.1]
  def change
    create_table :qr_codes do |t|

      t.timestamps
    end
  end
end
