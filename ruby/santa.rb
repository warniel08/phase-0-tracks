class Santa
	# defaults
	@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	@age = 0

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
santas << Santa.new("male", "American")
santas << Santa.new("female", "alien")
santas << Santa.new("none", "unicorn")
santas << Santa.new("agender", "white")
santas << Santa.new("N/A", "N/A")

test = []
santas.each do |gender, ethnicity|
	test << Santa.new(gender, ethnicity)
	print "#{gender}"
end

#p santas.index(0)



	
	

