#!/usr/bin/ruby

class Duck

  def initialize(name)
    @name = name
  end

  def new_animal(name)
    Duck.new(name)
  end

  def eat
    puts "#{@name} is ... eating"
  end 

  def speak
    puts "#{@name} is ... speaking"
  end 

  def sleep
    puts "#{@name} is ... sleeping"
  end 

end

class Frog

  def initialize(name)
    @name = name
  end

  def new_animal(name)
    Frog.new(name)
  end

  def eat
    puts "#{@name} is not ... eating"
  end 

  def speak
    puts "#{@name} is not ... speaking"
  end 

  def sleep
    puts "#{@name} is not ... sleeping"
  end 

end

class Pond

  def initialize(number_of_animals)
    @animal = []
    number_of_animals.times do |n|
      animal = new_animal("#{n} gou")
      @animal << animal
    end  
  end

  def simulate_one_day
    @animal.each { |a| a.eat }
    @animal.each { |a| a.speak }
    @animal.each { |a| a.sleep }
  end

end

class DuckPond < Pond

  def new_animal(name)
    Duck.new(name)
  end

end

class FlogPond < Pond

  def new_animal(name)
    Flog.new(name)
  end

end

DuckPond.new(3).simulate_one_day
