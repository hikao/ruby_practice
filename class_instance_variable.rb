#!/usr/bin/ruby

class Hoge

  # define class instance variable
  @civ = "class instance_val"

  attr_accessor :instance_val, :a
  def initialize(name)
    @instance_val = name
	@a = "aaa"
  end

  def self.access_civ(str)
    puts @civ << str
  end

  def change_a(n)
    @a = n
	puts @a
  end

end

h = Hoge.new("Hika")
puts h.instance_val
puts Hoge.access_civ("dayo")

h.change_a("bbb")
