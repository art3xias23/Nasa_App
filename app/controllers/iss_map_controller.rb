class IssMapController < ApplicationController
  require 'net/http'

  def index
  	@iss_api = Iss.get_iss_api
  	@iss_map = Iss.get_iss_map
  end

 
end
