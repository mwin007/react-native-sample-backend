require 'rails_helper'

RSpec.describe "Landlords", type: :request do
  describe "GET /landlords" do
    it "works! (now write some real specs)" do
      get landlords_path
      expect(response).to have_http_status(200)
    end
  end
end
