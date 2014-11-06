# Step 1: Working with Arrays and Hashes

# Copy your solution from conditional_teddit.rb.

def greeting
  puts "Welcome to Jeddit"
end

def award_bonus(story_title, current_upvotes)
  bonus_points == 0
  if story_title.include? 'cat'
    current_upvotes = current_upvotes * 2
    bonus_points == 1
  elsif story_title.include? 'pig'
    current_upvotes = current_upvotes / 2
    bonus_points == 1
  elsif story_title.include? 'candy'
    current_upvotes = current_upvotes + 1
    bonus_points == 1
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

def initiate_collection(stories_collection)
	stories_collection = []

def collect_story(stories_collection, story_hash)
	stories_collection = []
	story_hash={}
	puts "Please give me a story title:"
	story_hash[:title] = gets.strip
	puts "Please give me a category:"
  	story_hash[:category] = gets.strip 
  	puts "Please give me the current number of upvotes:"
	story_hash[:upvotes] = gets.strip.to_i
	stories_collection << story_hash
end

# Update any reference to the story (upvotes, category and title)
# Your story hash should look like the one below:
# { title: "Monkeys thank mayor for flounder tooth necklace", category: "Teeth", upvotes: 1 }
# Add the hash to an array called stories and print "Story: Monkeys thank mayor for flounder tooth necklace, Category: (Teeth), Current Upvotes: 1"
def populate_collection(stories_collection)
	stories_collection = []
	story_hash = { title: "Monkeys thank mayor for flounder tooth necklace", category: "Teeth", upvotes: 1 }
end


def announce_story(stories_collection)
	stories_collection.each do |announce|
		puts "Story: #{stories[:title]}, Category: #{stories[:category]}, Current Upvotes: #{stories[:upvotes]}"
	end
end


# Using the stories array
# Test your cat, pig, and candy upvote conditional logic.
# (cats get double upvotes, pigs - half of upvotes, candy gest +1 upvote)
def test_bonus(stories_collection, bonus_points)
		if bonus_points==1
			puts "Bonus points! It's a cat, pig or candy story."
		end
	end
end


#

# The actual thing

greeting
stories = []
stories << populate_collection(story)
stories << collect_story(stories, story)
announce_story(stories)
vagrant ssh	

# Step 2: Adding Loops
# Use a loop, so that your program continues to ask a user for stories until they chose to quit. ("Would you like to add another story? Enter 'y' or 'n'")
# Once the user is finished with entering their stories, use .each to print each story in the stories array.
#
#
