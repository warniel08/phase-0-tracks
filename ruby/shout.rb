# module Shout
  
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yell_happily(praises)
#   	praises + "!!!" + " :)"
#   end

# end

# p Shout.yell_angrily("Arghh")
# p Shout.yell_happily("Hey")


module Shout
  
  def yell_angrily(words)
    puts "#{words}!!! :("
  end

  def yell_happily(praises)
  	puts "#{praises}!!! :)"
  end

end

class Child
	include Shout
end

class Adult
	include Shout
end

child = Child.new
child.yell_angrily("Mom")

adult = Adult.new
adult.yell_happily("Yes, dear")



