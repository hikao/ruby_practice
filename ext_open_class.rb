#!/usr/bin/ruby

# すでに定義されているクラスの拡張

class Numeric
  def steps
    return [] if self <= 0

	0.upto(self).to_a
  end
  def call_self
    self
  end
end

p 10.steps
p 0.steps
p 7.call_self
