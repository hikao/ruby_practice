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

  p = Proc.new do
    ary = ["Test", "pc", "hoge"]
    ary.join
  end
  const_set(:Child, Class.new(Parent) do |klass|
    def say_my_age
      puts "10 years old"
    end
    define_method("build") do
      puts p.class
      p.call
    end
  end)

end

c = Human::Child.new
#c.say_my_age
#c.say_adult_age
puts c.build

