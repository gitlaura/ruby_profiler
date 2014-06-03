def build_dictionary(stopping_point, directory)
	words = []
	definition = []
	i = 0
	File.open(directory, "r") do |f|
		f.each_line do |line|
			definition = line.split
			words << definition[0]
			i += 1
			if i == stopping_point
				return words
			end
		end
	end
end

wordlist = build_dictionary(10000, "dictionary.txt")
word_to_find = "HAPPY"

#This is the first set of code I'm looking at with profiler
#and this one has array#each and nil in it
counter = 0
word_index = 0
for word in wordlist
	if word == word_to_find
		word_index = counter
	end
	counter += 1
end
puts "#{word_to_find} is found on line #{word_index} with the for loop."

#This is the first set of code I'm looking at with profiler
#and this one has fixnum#+ and Array#[] in it
counter = 0
word_index = 0
until word_index > 0
	if wordlist[counter] == word_to_find
		word_index = counter
	end
	counter += 1
end
puts "#{word_to_find} is found on line #{word_index} with the until loop."

