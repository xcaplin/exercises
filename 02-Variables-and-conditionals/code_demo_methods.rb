#TIME: ~ 45 min
# => While your instructor codes these methods in irb you should take notes here.



#1 - Let's say we wanted to perform the task of multiplying 22 by 44
22*44



#2 - Great, what if we wanted to multiply 22*4 again. If we had to type that out each time, it would be inefficient
# So, let's try and save that code to a method...
def multiply
	22*44
end



# NOTE: Running this does not return 968! How come?


##3 - Let's call that method, by simply typing out its name:
multiply



##4 - Now, let's say we wanted to make it a little smarter. Our  method will take two parameters passed to it.
# Let's name the parameters as variables x and y
# and then multiply them together.
def multiply(x,y)
	return x*y
end



#5 - Now CALL that method:
multiply(22,44)


#6 - Other People's methods. Two of the most common methods we will use throughout this class are puts and gets.
# Let's start with puts...
puts multiply(22,44)


#7 - One more thing! - When you are calling a method with parameters, using the parenthesis () is OPTIONAL
def multiply(x,y)
	puts "X is "+x.to_s
	puts "Y is "+y.to_s
	puts "XY is "+(x*y).to_s
	return x*y
end



#8 - Now, let's look at gets
gets.strip




#9 - So far, we have only been calling methods on their own
# However, you can also call methods on STRINGS and INTEGERS! Crazy, huh? Let's try.
result = multiply (22,44)
greeting = gets



	# Woah. Integer has a method on it called 'to_s' that returns the string
	# version of the number. Perhaps this will be useful some day. . .
1.to_s    				#this is calling method to_s on 1
"fascinating".reverse	#this is calling method reverse on the string
Kernel.puts "yo"    	#puts is a method called on Kernel, like all other rb methods
greeting.strip   		#removes whitespace or /n newline characters

# why doesn't 3.multiply 4 work ('private method' error)
# remember the layout: 
def method_name argument_1, argument_2
	# body
end 