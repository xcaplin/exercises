require 'pp'
# Step 1: Working with Arrays and Hashes

# Copy your solution from conditional_teddit.rb.

def greeting
  puts "Welcome to Jeddit"
end

def bonus_upvotes(story_title, current_upvotes)
  bonus_points = 0
  if story_title.include? 'cat'
    current_upvotes = current_upvotes * 2
    bonus_points = 1
  elsif story_title.include? 'pig'
    current_upvotes = current_upvotes / 2
    bonus_points = 1
  elsif story_title.include? 'candy'
    current_upvotes = current_upvotes + 1
    bonus_points = 1
  end
end

#  puts "Testing the upvoter: Story: " + story_title  + ". Upvotes: " + current_upvotes.to_s


#def get_story
#  puts "Please give me a story title:"
#  gets.strip
#end

#def get_upvotes
#  puts "Please give me current number of upvotes:"
#  gets.strip.to_i
#end


# Create an empty stories array. This will be used to hold all stories we capture.
# Users enter the story as they do now, but it gets put in a hash instead.

def collect_story(story_title, story_category, current_upvotes)
	stories = []
	puts "Please give me a story title:"
  	story_title = gets.strip 
	puts "Please give me a category:"
  	story_category = gets.strip 
  	puts "Please give me current number of upvotes:"
	current_upvotes = gets.strip.to_i
	stories << {title: story_title, category: story_category, upvotes: story_upvotes}
end


# Update any reference to the story (upvotes, category and title)
# Your story hash should look like the one below:
# { title: "Monkeys thank mayor for flounder tooth necklace", category: "Teeth", upvotes: 1 }
# Add the hash to an array called stories and print "Story: Monkeys thank mayor for flounder tooth necklace, Category: (Teeth), Current Upvotes: 1"


def announce_story(stories)
	stories.each do |announce|
		puts "Story: #{stories[:title]}, Category: #{stories[:category]}, Current Upvotes: #{stories[:upvotes]}"

# Using the stories array
# Test your cat, pig, and candy upvote conditional logic.
<<<<<<< HEAD
# (cats get double upvotes, pigs - half of upvotes, candy gest +1 upvote)
		if bonus_points=1
			puts "It's a cat, pig or candy story"
		end
	end
end


=======
# (cats get double upvotes, pigs - half of upvotes, candy gets +1 upvote)
>>>>>>> fb980cfc5105a239ce607be1ccb5914e60f24270
#

# The actual thing

greeting
stories = collect_story(story_title, story_category, current_upvotes)
bonus_upvotes(story_title, current_upvotes)
announce_story(stories)
	

# Step 2: Adding Loops
# Use a loop, so that your program continues to ask a user for stories until they chose to quit. ("Would you like to add another story? Enter 'y' or 'n'")
# Once the user is finished with entering their stories, use .each to print each story in the stories array.
#


def get_story_from_user
  puts "Please give story title:"
  title = gets.strip.chomp
  puts "Please give category:"
  category = gets.strip.chomp
  puts "Please give upvotes:"
  upvotes = gets.strip.chomp

  {
    title: title,
    upvotes: upvotes,
    category: category
  }
end

def print_story(h)
  story = h[:story]
  category = h[:category]
  upvotes = h[:upvotes].to_i.to_f
  if h[:category] == 'cat'
    upvotes *= 2
  elsif h[:category] == 'pig'
    upvotes /= 2
  elsif h[:category] == 'candy'
    upvotes += 1
  end

  puts "Story: #{story}. Upvotes: #{upvotes}. Category #{category}"
end

def continue?
  puts "Do you want to continue? yes/no"
  gets.strip.chomp == "yes"
end



puts "hello!"
puts "welcome to teddit"

stories = []

stories << get_story_from_user
while continue?
  stories << get_story_from_user
end

puts "ok printing stories!"
stories.each { |s| print_story(s) }

pp stories
