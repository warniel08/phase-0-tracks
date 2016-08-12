# Take real name and create fake name

# Write method to swap first and last names
# => use .split, .reverse, and .join to make this method work

# Change all vowels to the next vowel in 'aeiou', and all consonants to the next 
# consonant in the alphabet. 
# => create if/else to check if vowels/consonants are included in name, if they are
# => rotate position in array, use index positions to swap out that index number for 
# => letter if there is a "u" swap that for "a", if there is a "z", swap that for "b", 
# => if there is a " ", leave it

# this method splits a name and reverses it
def name_swap(name)
	name = name.split(" ")
	name = name.reverse
end

# => this method takes vowels and consonants and shifts the array one to the left 
# to advance the index of the letter in the array
def name_change(name_letters)
	vowels = ["a", "e", "i", "o", "u"]
	consonants = %w[b c d f g h j k l m n p q r s t v w x y z]
	name_letters = name_letters.downcase
	name_letters = name_letters.split('')
	 letters_change = name_letters.map do |letter| 
		if vowels.include?(letter)
			change_vowels = vowels.rotate
			vowel_index = vowels.index(letter)
			change_vowels[vowel_index]
		elsif consonants.include?(letter)
			change_consonants = consonants.rotate
			consonants_index = consonants.index(letter)
			change_consonants[consonants_index]
		elsif letter == "u"
			letter = "a"
		elsif letter == "z"
			letter = "b"
		elsif letter == " "
			letter = " "
		end
	end
	letters_change.join
end

# driver code
puts "\nThe Great Alias Maker"

# code assumes that you enter two names separated by a space
# loop to keep asking if you want to enter a new name, otherwise 'quit' to end
loop do 
	puts "\nTo create an alias, please enter a first and last name:"
	print "(Enter 'quit' to end):> " 
		alias_name = gets.chomp
			if alias_name == "quit"
				break
			# if you accidentally hit enter without entering anything
			elsif alias_name == "" 
				puts "Sorry please try again!"
			else original_name = alias_name
				original_name = name_swap(name_change(alias_name))
				first_name = original_name[0].capitalize
				last_name = original_name[1].capitalize
				full_name = first_name + " " + last_name
				puts "\nYour new alias is #{full_name}"
				puts "Your old name is #{alias_name}"
			end
end









