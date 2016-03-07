#!/usr/bin/ruby

class Parent
  def parent_method 
    puts "parent_method"
  end
end

c = self.class.const_set(:Child, Class.new)
puts c.class
