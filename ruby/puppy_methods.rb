#_____ Release 0 & 1 __________________________________________________________

class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(number)
    number.times { print "Woof! " }
  end

  def roll_over
    puts "\n*rolls over*"
  end

  def dog_years(human_years)
    human_years * 7
  end

  def shake_hand
    puts "*shakes hand*"
  end

  def initialize
    puts "Initializing new puppy instance..."
  end

end

Spot = Puppy.new

Spot.fetch("ball")
Spot.speak(5)
Spot.roll_over
puts Spot.dog_years(5)
Spot.shake_hand

#_____ Release 2 ______________________________________________________________

class FootballPlayer

  def pass(yards)
    puts "Passes ball #{yards} yards to teammate."
    yards
  end

  def initialize
    puts "Initializing new football player instance..."
  end

  def greeting(name)
    puts "Hi my name is #{name}."
  end

end

Joe = FootballPlayer.new

Joe.pass(10)
Joe.greeting("Joe Riches")

# Question 1 & 2
football_players = Array.new
50.times do |player|
  player = FootballPlayer.new
  football_players << player
end

# Question 3
counter = 0
football_players.each do |player|
  player.pass(10)
  player.greeting("Joe #{counter += 1}")
end

