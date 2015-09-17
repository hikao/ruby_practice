#!/usr/bin/ruby

# How call method in singular class?

class BaseClass
  def hello
    p 'hello from BaseClass'
  end
end

hoge = BaseClass.new
def hoge.hello
  p "hello from singleton_method"
end
hoge.hello
p hoge.instance_of? BaseClass
p hoge.singleton_class.ancestors
