require './employee'
require './manager'
require './marekteer'

manager = Manager.new("Bob", "Builder", "MBA", "bob@acme.org")

marketer = Marketer.new("Seth", "Godin", "@seth")

marketer2 = Marketer.new("Jo" , "Johannson")
puts "Name: ", manager.full_name
puts "Contact: ", manager.contact

puts "Name: ", marketer.full_name
puts "Contact:", marketer.contact


puts "Name: ", marketer2.full_name
puts "Contact:", marketer2.contact

