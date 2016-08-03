print "What is your name? "
name = gets.chomp

print "How old are you? "
age = gets.chomp

print "What year were you born? "
birth_year = gets.chomp

print "Our company cafeteria serves garlic bread. Should we order some for you? (y/n) "
garlic_bread = gets.chomp

print "Would you like to enroll in the company's health insurance? (y/n) "
health_insurance = gets.chomp


if age.to_i == (2016 - birth_year.to_i)
	correct_age = true
else
	correct_age = false
end

if garlic_bread == "y"
	wants_garlic = true
else
	wants_garlic = false
end

if health_insurance == "y"
	wants_health = true
else
	wants_health = false
end

if name == ("Drake Cula" || "Tu Fang")
	name_input = true
else
	name_input = false
end

if correct_age == true && wants_garlic == true && wants_health == true && name_input == true
		puts "Definitely a vampire."
	elsif correct_age == true && (wants_garlic == true || wants_health == true)
		puts "Probably not a vampire."
	elsif correct_age != true && wants_garlic != true && wants_health != true
		puts "Almost certainly a vampire."
	elsif correct_age != true && (wants_garlic != true || wants_health != true)
		puts "Probably a vampire."
	else
		puts "Results inconclusive."
end