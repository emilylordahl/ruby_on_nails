class Color < ActiveRecord::Base

	has_and_belongs_to_many :users

	def self.get_colors
		response = HTTParty.get('https://www.kimonolabs.com/api/dpq9elac?apikey=nSRHFLygw6rJNhaX3W2LKsLCwPPOudme')
		p response['results']['collection'][0]['color']['href']

		# response.each do |i|
		# 	category = ['results']['collection'][i]['color']['href']
		# end
		# p category
	end

end
