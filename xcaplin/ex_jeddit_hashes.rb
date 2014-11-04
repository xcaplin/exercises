# Step 1: Working with Arrays and Hashes

# Copy your solution from conditional_teddit.rb.

def greeting
  puts "Welcome to Jeddit"
end
 
def print_story(story_title, current_upvotes)
  if story_title.include? "cat"
    current_upvotes=current_upvotes*2
  elsif story_title.include? "pig"
    current_upvotes=current_upvotes/2
  end
 puts "Story: " + story_title  + ". Upvotes: " + current_upvotes.to_s
 end
 
def get_story
  puts "Please give me a story title:"
  gets.strip
end
 
def get_upvotes
  puts "Please give me current number of upvotes:"
  gets.strip.to_i
end

 
# The actuall thingo
 
greeting
story = get_story
upvotes = get_upvotes
print_story(story, upvotes)

# Create an empty stories array. This will be used to hold all stories we capture.
# Users enter the story as they do now, but it gets put in a hash instead.
# Update any reference to the story (upvotes, category and title)
# Your story hash should look like the one below:
# { title: "Monkeys thank mayor for flounder tooth necklace", category: "Teeth", upvotes: 1 }
# Add the hash to an array called stories and print "Story: Monkeys thank mayor for flounder tooth necklace, Category: (Teeth), Current Upvotes: 1"
# Using the stories array
# Test your cat, pig, and candy upvote conditional logic.
# (cats get double upvotes, pigs - half of upvotes, candy gest +1 upvote)
#
# Step 2: Adding Loops
# Use a loop, so that your program continues to ask a user for stories until they chose to quit. ("Would you like to add another story? Enter 'y' or 'n'")
# Once the user is finished with entering their stories, use .each to print each story in the stories array.
#
#
