# == Schema Information
#
# Table name: landlords
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Landlord < ApplicationRecord
  has_many :shops, dependent: :destroy
  has_many :qr_codes, dependent: :destroy

  validates :name, presence: true
end
