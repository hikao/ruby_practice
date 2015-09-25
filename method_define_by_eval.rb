#!/usr/bin/ruby

class Klass
end

k1 = Klass.new
k2 = Klass.new

# インスタンスメソッドが定義される
Klass.class_eval do 
  def hoge
    p 'hoge'
  end
end

k1.hoge # => hoge
k2.hoge # => hoge
Klass.new.hoge # => hoge
#Klass::hoge # => NoMethodError

p "==========="

k1.instance_eval do
  def uniq_method
    p 'uniq_method'
  end
end

k1.uniq_method # => uniq_method
k2.uniq_method # Nomethoderror uniq_methodはk1のみ持つ特異メソッドだから。 
