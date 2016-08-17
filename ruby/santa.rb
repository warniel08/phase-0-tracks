class Santa
	# defaults
	reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	age = 0

	# Create 3 methods:
	# speak
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!" 
	end
	
	# eat_milk_and_cookies
	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!"
	end
	
	# initialize
	def initialize(gender, ethnicity)
		#puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
	end
end

# new_Santa = Santa.new("male", "pirate")
# p new_Santa
# new_Santa.speak
# new_Santa.eat_milk_and_cookies("chocolate chip")
	
santas = []
genders = ["male", "female", "non", "alien", "N/A"]
ethnicities = ["American", "alien", "unicorn", "white", "N/A"]
genders.length.times do |i|
	santas << Santa.new(genders[i], ethnicities[i])
end


test = []
santas.each do |genders, y|
	puts "Creating new #{genders} gender Santa."
	test << Santa.new(genders, y)
	puts "There are now #{test.length} Santa(s)."
	puts "-----"	
end










