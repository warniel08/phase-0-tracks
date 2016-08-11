# Take real name and create fake name

# Write method to swap first and last names
# => use .split, .reverse, and .join to make this method work

# Change all vowels to the next vowel in 'aeiou', and all consonants to the next 
# consonant in the alphabet. 

def name_swap(name)
	name = name.split(' ')
	name = name.reverse
	#name = name.join(' ')
end

def vowel_change(name_vowels)
	vowels = ["a", "e", "i", "o", "u"]
	consonants = %w[b c d f g h j k l m n p q r s t v w x y z]
	name_vowels = name_vowels.downcase
	name_vowels = name_vowels.split('')
	vowels_change = name_vowels.map do |letter| 
		if vowels.include?(letter)
			vowels.rotate(1)[vowels.index(letter)]
		elsif consonants.include?(letter)
			consonants.rotate(1)[consonants.index(letter)]
		elsif letter == "u"
			letter = "a"
		elsif letter == "z"
			letter = "b"
		else
			letter = " "
		end
	end
	vowels_change.join
end

p vowels = vowel_change("Felicia Torres")
#first_name = fn_letter_change("Felicia Torres")
#puts first_name + vowels
#last_name = ln_letter_change("Felicia Torres")
#puts full_name = first_name + " " + last_name
#p name_swap(full_name)



#def fn_letter_change(name_letters)
#	consonants = %w[b c d f g h j k l m n p q r s t v w x y z]
#	name_letters = name_letters.downcase
#	name_letters = name_letters.split(" ")
#	name_letters = name_letters[0].split("")
#	change_letters = name_letters.map! do |letter|
#		if consonants.include?(letter)
#			consonants.rotate(1)[consonants.index(letter)]
#		else
#			letter = " "
#		end
#	end
#	#change_letters.join
#end
#
#def ln_letter_change(ln_letters)
#	consonants = %w[b c d f g h j k l m n p q r s t v w x y z]
#	ln_letters = ln_letters.downcase
#	ln_letters = ln_letters.split(" ")
#	ln_letters = ln_letters[1].split("")
#	ln_change_letters = ln_letters.map! { |letter| letter.next }
#	ln_change_letters.join
#end



# Gave an error but prints name and letters once
#i = 0
#	while i < name_letters.length
#		if name_letters[i] == " "
#			i += 1
#		else
#			p name_letters = name_letters.split('')
#			p name_letters = name_letters.map! { |letter| letter.next }
#			p letters = name_letters.join('')
#				i +=1
#		end
#	end
#	letters


# Prints name as many times as there are letters in the index, does switch letters
#i = 0
#	name_letters = name_letters.split("")
#	name_length = name_letters.length
#		while i < name_length
#			if name_letters[i] == " "
#				i += 1
#			else
#				p name_letters = name_letters.map! { |letter| letter.next }
#				p name_join = name_letters.join("")
#					i += 1
#			end
#		end



