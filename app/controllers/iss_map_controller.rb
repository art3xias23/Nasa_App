class IssMapController < ApplicationController
  def index
  	@iss_api = Iss.get_iss_api
  end
end
