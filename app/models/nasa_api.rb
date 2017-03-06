class NasaApi < ApplicationRecord

	def self.get_api_info
		#We use self so we can use the method without creating an instance of the class everytime
		nasa_api = "https://api.nasa.gov/planetary/apod?api_key=6urkm5VBJjqxIY3PVxTTGu0Bwub97CJ3iEP4ZY9A"
		puts "###################" + nasa_api
		request_to_nasa_api = Net::HTTP.get(URI(nasa_api))
		JSON.parse request_to_nasa_api
	end 

end
