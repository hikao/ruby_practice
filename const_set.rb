#!/usr/bin/ruby

class Parent
  def initilized
  end
  def say_adult_age
    puts "33 years old"
  end

  def work
    puts "i can work out!"
  end
end

class Human

  const_set(:Child, Class.new(Parent) do |klass|
    def say_my_age
      puts "10 years old"
    end
    define_method("define_method") do |method|
      puts method
    end
  end)
  
end

c = Human::Child.new
c.say_my_age
c.say_adult_age
c.define_method("aaa")
