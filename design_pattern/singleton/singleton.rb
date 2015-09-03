#!/usr/bin/ruby

require 'Singleton'

class RubyPractice
  include Singleton
  @@cls_val = 0

  def initialize
    puts "initialize"
	# インスタンス変数定義
	@ins_val = 0
  end

  def call_object_id
    puts "object_id is #{self.object_id}"
  end

  def count_cls_val
    @@cls_val += 1
	puts @@cls_val
  end

  def count_ins_val
    @ins_val += 1
	puts @ins_val
  end
end

# 最初にinitializeが呼ばれる
# 全て同じオブジェクト
RubyPractice.instance.call_object_id 

# initializeが呼ばれる
# オブジェクトIDが変わる
puts RubyPractice.clone.instance.call_object_id

# クラス変数の挙動確認
puts "-- cls val --"
RubyPractice.instance.call_object_id
RubyPractice.instance.count_cls_val 
RubyPractice.instance.count_cls_val
RubyPractice.instance.count_cls_val
# cloneする
clone =  RubyPractice.clone.instance
puts "-- after clone --"
clone.call_object_id
clone.count_cls_val # clone後もクラス変数は引き継がれる
clone.count_cls_val
clone.count_cls_val

# インスタンス変数の挙動確認
#puts "--- ins val ---"
RubyPractice.instance.call_object_id 
RubyPractice.instance.count_ins_val
RubyPractice.clone.instance.count_ins_val








