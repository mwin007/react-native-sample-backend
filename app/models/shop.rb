# == Schema Information
#
# Table name: shops
#
#  id          :integer          not null, primary key
#  name        :string
#  landlord_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  latitude    :float
#  longitude   :float
#  address     :string
#

class Shop < ApplicationRecord
  belongs_to :landlord
  has_many :qr_codes, dependent: :destroy

  validates :name, presence: true
  validates :landlord, presence: true

  geocoded_by :full_street_address   # can also be an IP address
  after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }

  def full_street_address
    address
  end
end
