def sing_the_song(bottles_number)
	while bottles_number > 0
		puts "#{bottles_number} bottles of beer on the wall, etc etc"
		bottles_number -=1
	end
	puts "No more bottles."
end


bottles=99
sing_the_song(bottles)
