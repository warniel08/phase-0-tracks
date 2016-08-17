class Santa
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
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def celebrate_birthday(age)
		age = @age+1
	end

	def get_mad_at(reindeer)
		@reindeer_ranking.index do |x| 
			if x == "reindeer"
				
			end
	end

	def gender=(new_gender)
		@gender = new_gender
	end

	#getter methods
	def age
		@age
	end

	def ethnicity
		@ethnicity
	end
end

# new_Santa = Santa.new
# new_Santa.speak
# new_Santa.eat_milk_and_cookies("chocolate chip")
	
# santas = []
# santas << Santa.new("male", "American")
# santas << Santa.new("female", "alien")
# santas << Santa.new("none", "unicorn")
# santas << Santa.new("agender", "white")
# santas << Santa.new("N/A", "N/A")


#test = Santa.new("male", "alien")
#p "#{test.age} and #{test.ethnicity}"

test = Santa.new("none", "unicorn")
x = test.get_mad_at("Dancer")
p x





