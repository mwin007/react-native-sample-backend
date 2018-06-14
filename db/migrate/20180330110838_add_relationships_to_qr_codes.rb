class AddRelationshipsToQRCodes < ActiveRecord::Migration[5.1]
  def change
    add_reference :qr_codes, :product, foreign_key: true
    add_reference :qr_codes, :shop, foreign_key: true
  end
end
