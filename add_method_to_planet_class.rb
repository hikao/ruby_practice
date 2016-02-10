#!/usr/bin/ruby

class Planet
  def life?
    puts "Who knows?"
  end
end
 
pluto = Planet.new()
earth = Planet.new()
mars = Planet.new()
 
# (A)
 
pluto.life?()  #=> Probably not.
earth.life?()  #=> Positively!
mars.life?()   #=> Who knows?
