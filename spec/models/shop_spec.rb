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

require 'rails_helper'

RSpec.describe Shop, type: :model do
  subject(:shop) { build(:shop, landlord: create(:landlord)) }

  it { should be_valid }
  it { should have_many(:qr_codes).dependent(:destroy)}
  it { should belong_to(:landlord)}

  describe 'validations' do
    it { should validate_presence_of(:name)}
    it { should validate_presence_of(:landlord)}
  end
end
