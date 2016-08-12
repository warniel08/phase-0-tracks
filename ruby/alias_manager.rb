# Take real name and create fake name

# Write method to swap first and last names
# => use .split, .reverse, and .join to make this method work

# Change all vowels to the next vowel in 'aeiou', and all consonants to the next 
# consonant in the alphabet. 

def name_swap(name)
	name = name.split(" ")
	name = name.reverse
	name = name.join(" ")
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
		else
			letter = " "
		end
	end
	letters_change.join
end




puts name_swap(name_change("Felicia Torres"))
#first_name = fn_letter_change("Felicia Torres")
#puts first_name + vowels
#last_name = ln_letter_change("Felicia Torres")
#puts full_name = first_name + " " + last_name
#p name_swap(full_name)


