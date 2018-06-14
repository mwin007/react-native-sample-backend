require "rails_helper"

describe "QRCode Redirection" do
  let!(:qr_code) { create(:qr_code, target_url: "http://example.com/some/product") }

  it "redirects based on the qr code" do
    get qr_code.redirect_origin_url
    expect(response).to redirect_to("http://example.com/some/product")
  end
end
