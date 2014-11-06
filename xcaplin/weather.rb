require 'rest_client'
require 'json'
require 'pp'

def get_weather_json(location_code)
	api_url = "http://api.openweathermap.org/data/2.5/weather?q=#{location_code}"
		RestClient.get(api_url).to_s 
end

def parse_weather_response(weather_json)
	JSON.parse(weather_json)
end

def convert_temperature(kelvin)
	(kelvin - 273.15).round(2) 
end

def print_weather(location_code,global_json)
	weather_info = parse_weather_response(global_json)
	city = weather_info['#{location_code}']
	puts "\nOutput for #{city}\n"
	
	#conditions
	weather_conditions = weather_info['weather'][0]['description']
	puts "Conditions: #{weather_conditions}"

	###coords
	#coord = weather_info['coord']
	#puts "Coordinates: #{coord}"

	#temperature
	temperature = weather_info['main']['temp']
	puts "Temperature: #{convert_temperature(temperature)}"
end

def get_location
	puts "Type the city:"
	city = gets.strip
	puts "Type the country:"
	country = gets.strip
	"#{city},#{country}"
end

location = get_location
json = get_weather_json(location)

print_weather(location,json)

#