# Take real name and create fake name

# Write method to swap first and last names
# => use .split, .reverse, and .join to make this method work

# Change all vowels to the next vowel in 'aeiou', and all consonants to the next 
# consonant in the alphabet. 
# => create if/else to check if vowels/consonants are included in name, if they are
# => rotate position in array, use index positions to swap out that index number for 
# => letter if there is a "u" swap that for "a", if there is a "z", swap that for "b", 
# => if there is a " ", leave it

def name_swap(name)
	name = name.split(" ")
	name = name.reverse
end

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

puts "\nThe Great Alias Maker"

alias_name = ""

loop do 
	print "(Type 'quit' when finished) Please enter a name you would like to create an alias for: " 
		alias_name = gets.chomp
		if alias_name
			alias_name = name_swap(name_change(alias_name))
			first_name = alias_name[0].capitalize
			last_name = alias_name[1].capitalize
			full_name = first_name + " " + last_name
			puts "Your new alias is #{full_name}."
			break
		elsif alias_name == "quit"
			break
		else
			puts "Sorry please try again!"
	end
end









