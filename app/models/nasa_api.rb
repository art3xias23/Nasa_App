class NasaApi < ApplicationRecord

	def self.get_api_info
		#We use self so we can use the method without creating an instance of the class everytime
		nasa_api = "https://api.nasa.gov/planetary/apod?api_key=#{ENV['NASA_API_KEY']}"
		request_to_nasa_api = Net::HTTP.get(URI(nasa_api))
		JSON.parse request_to_nasa_api
	end 

end
