#!/usr/bin/ruby

require 'Singleton'

class RubyPractice
  include Singleton
  @@cls_val = 0
  @cls_ins_val = 0

  def initialize
    puts "initialize"
	# インスタンス変数定義
	@ins_val = 0
  end

  def count_cls_val
    @@cls_val += 1
	puts @@cls_val
  end

  def count_ins_val
    @ins_val += 1
	puts @ins_val
  end

  def count_cls_ins_val
    @cls_ins_val += 1
	puts @cls_ins_val
  end
end

# クラス変数の挙動確認
puts "-- cls val --"
obj = RubyPractice.instance
obj.count_cls_val 
obj.count_cls_val
obj.count_cls_val
# cloneする
clone =  RubyPractice.clone.instance
puts "-- after clone --"
clone.count_cls_val # clone後もクラス変数は引き継がれる
clone.count_cls_val
clone.count_cls_val

# インスタンス変数の挙動確認
puts "--- ins val ---"
iv = RubyPractice.clone.instance
iv.count_ins_val
iv.count_ins_val
iv.count_ins_val
# cloneする
clone2 =  RubyPractice.clone.instance
puts "-- after clone --"
clone2.count_ins_val # インスタンス変数はリセットされる

# クラスインスタンス変数の場合
puts "--- cls ins val ---"
civ = RubyPractice.clone.instance
civ.count_ins_val
civ.count_ins_val
civ.count_ins_val
# cloneする
clone3 =  RubyPractice.clone.instance
puts "-- after clone --"
clone3.count_ins_val # クラスインスタンス変数もリセットされる
