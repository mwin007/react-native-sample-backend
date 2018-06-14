# == Schema Information
#
# Table name: merchants
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Merchant < ApplicationRecord
  has_many :products, dependent: :destroy

  validates :name, presence: true
end
