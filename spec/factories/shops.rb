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

FactoryBot.define do
  factory :shop do
    name { Faker::Company.name }
    association :landlord
  end
end
