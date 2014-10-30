# Create a new array and assign it to a variable
books = []

# Check its class
puts books.class

# Reiterate that a class tells you what things this object can respond to
puts books.empty?

# Create a staff array with the instructor and TAs names
staff = ["łukasz", "laurent"]
puts staff.empty?

# Show getting size with count, size, length, empty?
puts "count #{staff.count} size #{staff.size} length #{staff.length} empty #{staff.empty?}"

# Show reading from an array, zero indexing
puts staff.last
puts staff[-1]
puts staff[staff.size-1]

# Show appending to the array, with push, << and unshift
staff.push "raj"
staff << "eugenie"
staff.unshift "terry"
puts ""
puts "--- begin:"
staff.each {|staff| puts staff}


# Show popping and shifting
puts ""
puts "--- pop:"
staff.pop
staff.each {|staff| puts staff}

puts ""
puts "--- shift:"
shifted_staff = staff.shift

puts ""
puts "--- what's left:"
puts staff
puts "(shifted staff: #{shifted_staff})"

# Show how include? works
puts "is raj staff? #{staff.include? "raj"}"

###### alternative manual method:
found=false
staff.each do |member|
	if member == "raj"
		found=true
	else
	end
end
puts "is raj staff? #{found}"

# Show BANG Methods #sort!, #uniq!, #shuffle!, reverse!
puts "--- sort:"
puts "staff: #{staff}"
puts "sorted: #{staff.sort}"
puts "staff: #{staff}"
puts ""
puts "--- sort!:"
puts "staff: #{staff}"
puts "sorted!: #{staff.sort!}"
puts "staff: #{staff}"
puts ""
puts "reverse: #{staff.reverse}"
puts "shuffle: #{staff.shuffle}"
puts ""
puts "--- add extra laurent"
staff << "laurent"
puts "staff: #{staff}"
puts "uniq: #{staff.uniq}"

# Show join, to_s
puts "join: #{staff.join(',')}"
phones = "blackberry iphone samsung".split(' ')
puts "phones: #{phones}"



# Show split from string


