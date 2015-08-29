#!/usr/bin/ruby

# about self

class Hoge
  p "This self is called in Hoge class"
  p self
  p self.object_id
  def fuga
    p "This self is called in fuga method"
    p self
	p self.object_id
  end

  def self.class_method
    p "This self is called in class_method"
    p self
	p self.object_id # line8と同じになる
  end
end

kls = Hoge.new
p "-----"
kls.fuga
p "-----"
Hoge.class_method


