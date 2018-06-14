# == Schema Information
#
# Table name: qr_codes
#
#  id           :integer          not null, primary key
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  utm_source   :string
#  utm_medium   :string
#  utm_campaign :string
#  utm_term     :string
#  utm_content  :string
#  code         :string
#  target_url   :string
#  product_id   :integer
#  shop_id      :integer
#

FactoryBot.define do
  factory :qr_code do
    utm_source { rand(1000) }
    code { Faker::Code.asin }
    target_url { "http://example.com" }
    association :product
    association :shop
  end
end
