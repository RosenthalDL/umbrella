require "http"
require "json"
require "dotenv/load"
# Write your soltuion here!

#pp "What is your location?"

#location = gets.chomp()

#pp location

#url = "https://maps.googleapis.com/maps/api/geocode/json?address=Merchandise%20Mart%20Chicago&key=" + ENV.fetch("GMAPS_KEY")
url = "https://maps.googleapis.com/maps/api/geocode/json?address=Chicago&key=" + ENV.fetch("GMAPS_KEY")

raw_response = HTTP.get(url)
parsed_response = JSON.parse(raw_response)
results = parsed_response.fetch("results")[0]
geometry = results.fetch("geometry")
location = geometry.fetch("location")
latitude = location.fetch("lat")
longitude = location.fetch("lng")
