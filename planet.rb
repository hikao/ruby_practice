#!/usr/bin/ruby

class Planet
  def life?
    puts "who knows?"
  end
end

pluto = Planet.new()
earth = Planet.new()
mars = Planet.new()

# method override
def pluto.life?
  puts "Probably not."
end

def earth.life?
  puts "Positively"
end

pluto.life? # => Probably not.
earth.life? # => Positively
mars.life? # => Who konws?
