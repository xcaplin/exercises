def get_guess
	puts "Hello! Guess a number from 1 to 10."
	gets.strip.to_i
end

def try_again(guess_number, secret_number)
	while guess_number > secret_number 
		puts "Too high! Try again. (Hint: the number is "+secret_number.to_s+")"
		guess_number=gets.strip.to_i
	end

	while guess_number < secret_number 
		puts "Too low! Try again. (Hint: the number is "+secret_number.to_s+")"
		guess_number=gets.strip.to_i
	end

	while guess_number == secret_number
		puts "OMG ponies."
		break
	end
end


secret=rand(9)+1.to_i
guess=get_guess
try_again(guess, secret)

