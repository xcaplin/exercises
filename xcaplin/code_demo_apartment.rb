#Explaining classes, objects, attr_accessor & load paths. 
#TIME: 30 min

require './demo_class_Resident.rb'

class Apartment
	attr_accessor 	:size, :number_of_bedrooms, 
					:floor, :name

	def initialize(size, number_of_bedrooms, floor, name)
		@size = size
		@number_of_bedrooms = number_of_bedrooms
		@floor = floor
		@name = name
		@residents = []
	end

#	def is_occupied?
#		@residents.count > 0
#	end

	def residents
    	@residents.map do |resident|
      	resident.name
		end
	end

#	def get_residents
#		puts "Add a resident:"
#		residents << gets.strip
#		puts "Any more? (y/n)"
#		if gets.strip == "y" 
#			get_residents
#		else
#		end
#	end

#	def print_residents
#		puts "Thanks.\nResidents are: #{@residents}\nTotal residents: #{@residents.count}"
#	end

	def add_resident(resident)
		puts "Adding #{resident}" 
		@residents << resident
	end

	def to_s
		"Hello, and welcome to #{@name}. I have #{@residents.count} residents: #{residents.join(", ")}"
	end

end


hampstead = Apartment.new(37, 1, 2, "Heath Street")

#if hampstead.is_occupied?
#	puts "Residents: #{hampstead.residents}"
#else
#	puts "#{hampstead.name} is empty."
#   hampstead.get_residents
#	hampstead.add_resident "Jason"
#	hampstead.add_resident "Bob"
#	hampstead.add_resident "Ben"
	
hampstead.add_resident Resident.new("Jason")
hampstead.add_resident Resident.new("Ben")

#   hampstead.print_residents
puts hampstead


# Now a building, with lots of apartments
# Tell me the total number of residents in the building

# Also redo secret number into objects (classes) - 
# - hint: have a player object and a game object, maybe even a score object

