#!/usr/bin/ruby
# Pryのコマンド練習用
# Pry結構使える

require 'pry'

class Hoge

  attr_accessor :instance_val, :a
  def initialize(name)
    @instance_val = name
	  @a = "aaa"
  end

  def instance_method
    binding.pry
  end

end

h = Hoge.new("Hika")
puts h.instance_method
