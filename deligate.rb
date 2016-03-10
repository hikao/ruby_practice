#!/usr/bin/ruby

class A
  def hoge
    puts "hoge"
  end
end

class B < A
  def hoge
    puts "fugafuga"
  end
end

class C < B
end
B.new.hoge
C.new.hoge

class Deligate
  def initialize
    @a = A.new
  end

  def hoge
    @a.hoge
  end
end

deligate = Deligate.new
deligate.hoge

