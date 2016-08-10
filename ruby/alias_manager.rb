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

p name_swap("Warner Nielsen")



