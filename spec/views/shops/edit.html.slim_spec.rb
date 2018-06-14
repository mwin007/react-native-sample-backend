require 'rails_helper'

RSpec.describe "shops/edit", type: :view do
  before(:each) do
    @shop = assign(:shop, create(:shop))
  end

  it "renders the edit shop form" do
    render

    assert_select "form[action=?][method=?]", shop_path(@shop), "post" do

      assert_select "input[name=?]", "shop[name]"

      assert_select "select[name=?]", "shop[landlord_id]"
    end
  end
end
