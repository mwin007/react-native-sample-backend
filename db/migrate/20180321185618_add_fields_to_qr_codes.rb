class AddFieldsToQRCodes < ActiveRecord::Migration[5.1]
  def change
    add_column :qr_codes, :utm_source, :string
    add_index :qr_codes, :utm_source
    add_column :qr_codes, :utm_medium, :string
    add_index :qr_codes, :utm_medium
    add_column :qr_codes, :utm_campaign, :string
    add_index :qr_codes, :utm_campaign
    add_column :qr_codes, :utm_term, :string
    add_index :qr_codes, :utm_term
    add_column :qr_codes, :utm_content, :string
    add_index :qr_codes, :utm_content
    add_column :qr_codes, :code, :string
    add_index :qr_codes, :code
  end
end
