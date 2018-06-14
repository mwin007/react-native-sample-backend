class AddTargetUrlToQRCodes < ActiveRecord::Migration[5.1]
  def change
    add_column :qr_codes, :target_url, :string
  end
end
