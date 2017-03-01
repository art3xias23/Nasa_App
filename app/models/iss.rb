class Iss < ApplicationRecord
	def self.get_iss_api
		iss_api = "https://api.wheretheiss.at/v1/satellites/25544"
		request_iss_api = Net::HTTP.get(URI(iss_api))
		JSON.parse request_iss_api
	end 
end
