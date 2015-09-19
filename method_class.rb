#!/usr/bn/ruby
#
# About method class

ary = [1,2,3,4,5]
m = ary.method(:shift)

p m.call

class Dog
  def bark
    p "----"
    p "wan!"
  end
end

dog = Dog.new
dog_wan = dog.method(:bark)
dog_wan.call


class Dog
  def bark
    p "kyankyan"
  end
end
dog2 = Dog.new
dog2.bark
dog_wan.call

class Dog
  def bark
    p "bowbow"
  end
end

dog3 = Dog.new
dog3.bark
dog_wan.call
