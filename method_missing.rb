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

class Fuga < Hoge
  def method_missing(name, *args)
	# 親クラスがmethod_missingを利用している場合は、
	# 必要なメソッドのハンドリングだけ行いあとはsuperに任せる
    if name == :target
	   puts "target"
	end
	super
  end
end

fuga = Fuga.new
fuga.target
fuga.aaa 123
