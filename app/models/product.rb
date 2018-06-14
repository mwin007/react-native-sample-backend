# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string
#  merchant_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Product < ApplicationRecord
  belongs_to :merchant
  has_many :qr_codes, dependent: :destroy

  validates :name, presence: true
  validates :merchant, presence: true
end
