class QRCodesController < ApplicationController
  def forward
    #TODO - QR codes will contain a URL that will lead to this action
    # the action will parse out relevant data from the url to figure out which qr code it came from
    # it will send tracking data (skip this for now but plan for it with a placeholder)
    # it will then redirect to the product listing (for now let's say it's a url hardcoded into the qr code model)
    qr_code = QRCode.find_by_code! params[:code]

    redirect_to qr_code.target_url
  end

end
