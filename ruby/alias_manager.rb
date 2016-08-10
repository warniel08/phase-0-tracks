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

def vowel_change(name_string)
	vowels = "aeiou".chars
	name_string = name_string.split('')
	
	for name_string in vowels do
			vowels.map! { |vowel| vowel.next }
	end
		#name_string.map! { |letter| letter.next }
		#name_string.join('')
end

p name_swap("Warner Nielsen")
p vowel_change(name_swap("Warner Nielsen"))




