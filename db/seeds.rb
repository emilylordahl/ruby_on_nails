Color.destroy_all

# Data Scraped from Essie's Website
ESSIE_API_KEY = ENV["ESSIE_API_KEY"]
url = "https://www.kimonolabs.com/api/dpq9elac?apikey=#{ESSIE_API_KEY}"

response = HTTParty.get(url)
i = 0

while i < response["results"]["collection"].length do

  Color.create({
    name: response["results"]["collection"][i]["color"]["text"].titleize,
    hex_value: response["results"]["collection"][i]["color"]["style"].split(" ")[1],
    category: response["results"]["collection"][i]["color"]["href"].split("/")[4].capitalize
  })

  i += 1
end
