def process_names(names)
	array = []
	names.each do |name|
		array << {name: name, length: name.length}
	end
	array
end

def print_names(array)
	array.each do |item|
		puts "#{item[:name]} is #{item[:length]} letters long"
		if item[:length] > 6 
			puts "That's a long name!"
		end
	end
end


names = ["Richard", "Łukasz", "Laurent", "Eugenie", "Jason"]
array = process_names(names)
print_names(array)


