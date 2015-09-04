#!/usr/bin/ruby

class Hoge
  attr_accessor :name
  def initialize(name)
    @name = name
  end
  def get_ary
    return ["a", "b", "c", "d"]
  end
end
