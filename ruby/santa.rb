class Santa
	# Create 3 methods:
	
	# speak method
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!" 
	end
	
	# eat_milk_and_cookies method
	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!"
	end
	
	# initialize method
	def initialize(gender, ethnicity, age)
		#puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		#@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = age
	end

	#setter methods
	def celebrate_birthday=(age_increase)
		@age = age_increase + 1
	end

	def get_mad_at=(reindeer)
		reindeer_name = @reindeer_ranking.delete(reindeer)
		@reindeer_ranking << reindeer_name
	end

	attr_accessor :gender, :age, :reindeer_ranking, :ethnicity

	#getter methods
	attr_reader :ethnicity

end

# Drive code
# new_Santa = Santa.new("x", "y")
# new_Santa.speak
# new_Santa.eat_milk_and_cookies("chocolate chip")
	
# santas = []
# santas << Santa.new("male", "American")
# santas << Santa.new("female", "alien")
# santas << Santa.new("none", "unicorn")
# santas << Santa.new("agender", "Canadian")
# santas << Santa.new("N/A", "N/A")

# puts 
# test = Santa.new("none", "falcon")
# p test
# test.gender = "male"
# p test
# puts "#{test.ethnicity}"
# test.celebrate_birthday = 22
# p test
# puts "#{test.age}"
# test.get_mad_at = "Vixen"
# p test

santas = []
genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "cis", "other", "two-spirit", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "two or more races", "Native American", "Native Hawaiian", "N/A"]
age = rand(0..140)
p age

5.times do |i|	
 santas << Santa.new(genders[i], ethnicities[i], age)
end

p santas

# santas << genders.sample
# santas << ethnicities.sample
# p santas


