#!/usr/bin/ruby

class Hoge

  # define class instance variable
  @civ = "class instance_val"

  attr_accessor :instance_val, :a
  def initialize(name)
    @instance_val = name
	@a = "aaa"
  end

  def self.access_civ(str)
    puts @civ << str
  end

  def change_a(n)
    @a = n
	puts @a
  end

  # インスタンスメソッドからクラスインスタンス変数を参照する
  # 以下だとできない
  def read_cls_ins_val
    puts @civ
  end
  # 以下だとできる
  def read_cls_ins_val2
    puts self.class.instance_variable_get :@civ
  end

end

h = Hoge.new("Hika")
puts h.instance_val
puts Hoge.access_civ("dayo")

h.change_a("bbb")
puts "=====クラスインスタンス変数の参照====="
h.read_cls_ins_val
puts "---"
h.read_cls_ins_val2

