#!/usr/bin/ruby

# About binding object in eval method.

class Hoge
  attr_accessor :ins_val
  def initialize
    @ins_val = "This is instance val"
  end

  def hogehoge
    local_val = "This is local val"
    binding
  end

  private
  def private_method
    p "private_method"
  end
end

h = Hoge.new
binding_obj = h.hogehoge
# インスタンス変数
eval "p @ins_val", binding_obj     # => "This is instance val" 
# プライベートメソッド
eval "private_method", binding_obj # => "private_method"
# 以下のような呼び方もできる
binding_obj.eval "private_method"
