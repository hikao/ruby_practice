#!/usr/bin/ruby

class SugarWater

  attr_accessor :water, :sugar
  def initialize(water, sugar)
    @water = water
    @sugar = sugar
  end

end


class SugarWaterBuilder

  attr_accessor :sugar_water
  def initialize
    @sugar_water = SugarWater.new(0, 0)
    puts @sugar_water.methods
  end

  def add_water(water)
    @sugar_water = water
  end

  def add_sugar(sugaramount)
    @sugar_water += sugaramount
  end

  def result
    puts "The amount of water is ... #{@sugar_water}"
  end

end

class SugarWaterDirector

  def initialize(builder)
    @builder = builder
  end

  def make_sugar_water
    @builder.add_water(100)
    @builder.add_sugar(10)
    @builder.result
  end
  
end

# main
builder = SugarWaterBuilder.new

s = SugarWaterDirector.new(builder)
s.make_sugar_water
