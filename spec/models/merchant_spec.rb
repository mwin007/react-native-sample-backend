# == Schema Information
#
# Table name: merchants
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Merchant, type: :model do
  subject(:merchant) { build(:merchant) }

  it { should be_valid }
  it { should have_many(:products).dependent(:destroy)}

  describe 'validations' do
    it { should validate_presence_of(:name)}
  end
end
