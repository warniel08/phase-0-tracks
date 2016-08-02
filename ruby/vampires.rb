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
	garlic_bread = true
else
	garlic_bread = false
end

if health_insurance == "y"
	health_insurance = true
else
	health_insurance = false
end

if name == "Drake Cula" || name == "Tu Fang"
	puts "\nDefinitely a vampire."
elsif (correct_age && garlic_bread) || health_insurance
	puts "\nProbably not a vampire."
#elsif !(correct_age && garlic_bread) || !health_insurance
	#puts "\nProbably a vampire."
#elsif !correct_age || !(garlic_bread && health_insurance)
	#puts "\nAlmost certainly a vampire."
else
	puts "\nResults inconclusive."
end

#At this point my my code works as expected. When I run the the code and do the right
#date but choose no garlic bread and no insurance, it prints results inconclusive. However,
#when I uncomment the code on the elsif's, it won't print the correct message. It's because 
#the answers to the aquestion aren't saving independently. It's running it through the 
#code and giving me "probably a vampire". I want it to skip that info and drop down to
#results inconclusive. Not sure how to do that yet. Basically, I want it to do what the 
#instructions are telling me: "Your program should base its result on the latest condition 
#matched, not the first condition matched. In other words, it's not a "only one condition 
#will apply" sort of scenario. This may mean repeatedly updating a variable as each 
#condition is checked, so that the variable always contains the most precise result."
#Do I need a loop? Do I set a variable inside?