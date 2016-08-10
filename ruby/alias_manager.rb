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

def vowel_pull(name_string)
	index = 0
	name_string = name_string.downcase
	name_string = name_string.split('')
	vowels = name_string.select { |vowel| vowel =~ /[aeiou]/}
end

#p name_swap("Warner Nielsen")
p vowel_pull("Eric Estrada")
#p vowel_pull(name_swap("Warner Nielsen"))




#name_string.each { |letter| letter.next }
#name_string.join('')