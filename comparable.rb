#!/usr/bin/ruby

# how to use comparable module.
# <=>演算子を定義しているクラスにcomparableモジュールをincludeする

class Weight
  include Comparable

  attr_accessor :weight

  def initialize(w)
    @weight = w
  end

  # <=>は宇宙船演算子やスペースシップ演算子と呼ばれる
  def <=>(other)
    self.weight <=> other.weight
  end

end

a = Weight.new(55)
b = Weight.new(65)

puts a < b
puts a != b
puts a <= b
