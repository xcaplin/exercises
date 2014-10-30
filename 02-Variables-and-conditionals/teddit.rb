def greeting
  puts "Welcom to teddit"
end
 
def print_story(story, upvotes)
  puts "Story: " + story  + ". Upvotes: " + upvotes.to_s
  if story.include? "cat"
  	upvotes=upvotes*2
  elsif story.include? "pig"
  	upvotes=upvotes/2
  end
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
print_story	
