class Game
	attr_accessor :player, :secret, :guess, :triesleft, :score

	def initialize(player, secret, guess, triesleft, score)
		@player = player
		@secret = secret
		@guess = guess
		@triesleft = triesleft
		@score = score
	end

	def to_s
		"Hello, and welcome to Secret Number. You have #{@triesleft} remaining."
	end

	def pickaname
		puts "What's your name, son?"
		player = gets.strip
	end

	def pickanumber(guess)
		puts "Pick a number (1-10):"
		guess = gets.strip
	end

	def pickasecret(secret)
		secret = rand(9)+1.to_i
	end

	def countdowntries(tries)
		3.triesleft.downto(1) do |tries|
			triesleft = tries
		end
		puts "You have #{@triesleft} tries left."
	end

	def showscore(score)
		score = 1
	puts "You have #{@score} points."
	end






end

round.pickaname = name
round.pickanumber = number
round.pickasecret = secret
round.countdowntries = tries
round.showscore = score

round = Game.new(name, number, secret, tries, score)
#round.pickaname
#round.pickasecret
#round.pickanumber
#round.countdowntries
#round.showscore
