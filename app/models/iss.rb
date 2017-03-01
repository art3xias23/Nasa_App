class Iss < ApplicationRecord
	def self.get_iss_api
		iss_api = "https://api.wheretheiss.at/v1/satellites/25544"
		request_iss_api = Net::HTTP.get(URI(iss_api))
		JSON.parse request_iss_api
	end 

	def self.get_iss_map
		iss_map_api = "https://api.wheretheiss.at/v1/coordinates/37.795517,-122.393693"
		request_iss_map_api = Net::HTTP.get(URI(iss_map_api))
		JSON.parse request_iss_map_api
	end 
end
