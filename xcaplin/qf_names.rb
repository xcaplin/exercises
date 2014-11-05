# List processing
#
# Write a method which accepts an array of names as an argument and
# returns a list of names and their associated lengths.

def process_names(names)
	processed = []
	names.each do |name|
		processed << {name: name, length: name.length}
	end
	processed
end

# Write a second method which accepts array returned by first one
# and prints out each name and its length. If the name is longer than 6
# characters the method needs to print out "Wow, that's a long name!"

def print_names(processed_names)
	processed_names.each do |item|
		puts "#{item[:name]} is #{item[:length]} letters long"
		if item[:length] > 6
			puts "Wow, that's a long name!"
		end
	end
	
end



names = ["Raj", "Łukasz", "Richard", "Eugenie"]
processed = process_names(names)
print_names(processed)
