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

FactoryBot.define do
  factory :product do
    name { Faker::Commerce.product_name }
    association :merchant
  end
end
