# Take real name and create fake name

# Write method to swap first and last names
# => use .split, .reverse, and .join to make this method work

# Change all vowels to the next vowel in 'aeiou', and all consonants to the next 
# consonant in the alphabet. 

def name_swap(name)
	name = name.split(' ')
	name = name.reverse
	name = name.join(' ')
end

def vowel_change(name_vowels)
	name_vowels = name_vowels.downcase
	name_vowels = name_vowels.split('')
	vowels = name_vowels.select { |vowel| vowel =~ /[aeiou]/}
end

def letter_change(name_letters)
	
end

#p name_swap("Warner Nielsen")
p vowel_change("Warner Nielsen")
#p letter_change("Warner Nielsen")
#p vowel_change(name_swap("Warner Nielsen"))






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



