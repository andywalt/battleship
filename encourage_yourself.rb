feelings = ["anxiety", "depression", "discouragement", "unlovely"]
#anxiety = ["Anxiety does not empty tomorrow of its sorrows, but only empties today of its strength. -Charles Spurgeon", "Anxiety is the hand maiden of creativity. T. S. Eliot"]
#depression = puts "Sad sad"

puts "Do you need a little encouragement? (yes/no)"
yn = gets.chomp
 if yn.empty?
 	puts "You didn't put anything. Please type Yes or No."
 else
 	puts "Well let's get started!"
 end

def welcome
  puts "What is your name?"
  name = gets.chomp.capitalize
  puts "Hello #{name}! I've got some encouragement for you!"
end

welcome

def feels
	puts <<-eos
    Are you feeling:
    Anxiety   Depression
    Discouragement  Unlovely
    Something Else (type a one word answer please)
        eos
	answer = gets.chomp.downcase
	if answer == "anxiety"
		puts "Anxiety does not empty tomorrow of its sorrows, but only empties today of its strength. -Charles Spurgeon"
		#I'd like to call an array (eventually randomized) of quotes here for each feeling.
  elsif answer == "depression"
	 puts "Depression is the inability to construct a future. -Rollo May"
  elsif answer == "discouragement"
	 puts "In spite of everything I shall rise again: I will take up my pencil, which I have forsaken in my great discouragement, and I will go on with my drawing. -Vincent Van Gogh"
  elsif answer == "unlovely"
	 puts "Everyone is like a butterfly, they start out ugly and awkward and then morph into beautiful graceful butterflies that everyone loves. -Drew Barrymore"
  else
	 #feelings.push(answer) #I'd like to add the answered feeling to the array to eventually research quotes for that topic.
	 puts "The feeling of #{answer} will be added to our list and encouragement will be brought in the future. Try choosing one of the feelings listed above."
	end
end

loop do
	feels
  puts "Do you need more encouragement? (yes/no)"
  need_more = gets.chomp
  if need_more != 'yes'
  	puts "Hope you're feeling better!"
    break
  end
end
