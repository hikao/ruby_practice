#!/usr/bin/ruby

# about singular method
# singular method = 特異メソッド

class Hoge
end

obj = Hoge.new
def obj.singular
  p "this is singular method"
end

obj.singular
p obj.class.method_defined?(:singular)
# Object#singleton_classで特異クラスにアクセスできる
p obj.singleton_class.method_defined?(:singular)

class OriginalClass
end
fuga = OriginalClass.new
p fuga.singleton_class.superclass
# オブジェクトは特異クラスのインスタンスではない
p fuga.instance_of? fuga.singleton_class
# オブジェクトのクラスのインスタンスである
p fuga.instance_of? OriginalClass

# 特異クラスはサブクラスやnewが禁止されている
#fuga.singleton_class.new # can't create instance of singleton class (TypeError)
#class A < fuga.singleton_class
#
#end
#can't make subclass of singleton class (TypeError)
puts "-------------------"

module Hello
  def call_hello
    p "helo helo"
  end
end

p fuga.singleton_class.ancestors
fuga.extend Hello
fuga.call_hello
p fuga.singleton_class.ancestors
puts "-------------------"

SINGLETON_OBJ = Object.new
SingletonClass = SINGLETON_OBJ.singleton_class
def SingletonClass.instance_get
  SINGLETON_OBJ
end
# シングルトン
p SingletonClass.instance_get
p SingletonClass.instance_get
p SingletonClass.instance_get
