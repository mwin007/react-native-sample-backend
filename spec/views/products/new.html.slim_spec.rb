require 'rails_helper'

RSpec.describe "products/new", type: :view do
  before(:each) do
    assign(:product, build(:product))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "input[name=?]", "product[name]"

      assert_select "select[name=?]", "product[merchant_id]"
    end
  end
end
