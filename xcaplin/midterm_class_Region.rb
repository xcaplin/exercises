class Region

	attr_accessor :country

	def initialize(country)
		@country = country
	end

	def choose_country
		puts "What country do you want to see the headlines from?/n"
		country = gets.strip.to_s
		country
	end

	def to_s
		"#{@country}"
	end

end
