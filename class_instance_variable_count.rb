#!/usr/bin/ruby

class CountClsInsVal
  @civ = 0
  def self.add_civ
    @civ += 1
	puts @civ
  end

  def initialize
    self.class.add_civ
  end
end

5.times do
  c = CountClsInsVal.new
end
