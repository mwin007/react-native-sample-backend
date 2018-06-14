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

require 'rails_helper'

RSpec.describe Product, type: :model do
  subject(:product) { build(:product, merchant: create(:merchant)) }

  it { should be_valid }
  it { should have_many(:qr_codes).dependent(:destroy)}

  describe 'validations' do
    it { should validate_presence_of(:name)}
    it { should validate_presence_of(:merchant)}
  end
end
