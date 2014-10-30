people = {}

puts people
people [:jason] = "jason caplin"
puts people

colors = {
	red: "#f00",
	green: "#0f0",
	blue: "#00f"
}

puts "size: #{colors.size}"
puts "keys: #{colors.keys}"
puts "values: #{colors.values}"

puts "deleting..."
colors.delete :blue
puts "keys: #{colors.keys}"
