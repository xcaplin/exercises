# method to check for equality
def assert_equal(expected, actual)
  raise "Expected #{expected.inspect} to match #{actual}" unless expected == actual
#  abort
end

# Write a program that prints the numbers from 1 to 100.
# But for multiples of three print “Fizz” instead of the number and for the multiples of five print “Buzz”.
# For numbers which are multiples of both three and five print “FizzBuzz”.
#
# Your code here

def fizzybuzz(number)
	if number % 15 == 0
		actual = "FizzBuzz"
	elsif number % 3 == 0
		actual = "Fizz"
	elsif number % 5 == 0
		actual = "Buzz"
	else
		actual = number.to_i
	end
end

def fizzbuzz(number)
	actual = ""
	actual << "Fizz" if number % 3 ==0
	actual << "Buzz" if number % 5 ==0
	actual = number if actual == ""
	actual
	
end






# Tests
assert_equal fizzbuzz(1), 1
assert_equal fizzbuzz(3), "Fizz"
assert_equal fizzbuzz(4), 4
assert_equal fizzbuzz(50), "Buzz"
assert_equal fizzbuzz(15), "FizzBuzz"
assert_equal fizzbuzz(5175), "FizzBuzz"

1.upto(100) do |number|
  puts fizzbuzz(number)
end
