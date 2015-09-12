#!/usr/bin/ruby

# method_missingの挙動を確かめる

class Hoge
  def initialize
  end

  def method_missing(name, *args)
    puts "hogehoge"
	puts name
	puts *args
  end
end

p Hoge.ancestors
# => [Hoge, Object, Kernel, BasicObject]
# method_missingはBasicobjectがもっている

hoge = Hoge.new
hoge.nai_method "args"

class DelegateArray
  def initialize
    @ary = []
  end
  def method_missing(name, *args)
    @ary.__send__ name, *args
	puts name
	puts *args
  end
end
d = DelegateArray.new
puts "====="
d << 1
