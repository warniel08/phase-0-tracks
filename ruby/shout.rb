module Shout
  
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(praises)
  	praises + "!!!" + " :)"
  end

end

p Shout.yell_angrily("Arghh")
p Shout.yell_happily("Hey")