# == Schema Information
#
# Table name: landlords
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Landlord, type: :model do
  subject(:landlord) { build(:landlord) }

  it { should be_valid }
  it { should have_many(:shops).dependent(:destroy)}

  describe 'validations' do
    it { should validate_presence_of(:name)}
  end
end
