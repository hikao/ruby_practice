#!/usr/bin/ruby

# インスタンス変数がプライベートメソッドから呼べるか検証

class Hoge
  attr_accessor :val
  def initialize(v)
    @val = v
  end

  def call_pri_method
    private_method
  end

  private
  def private_method
    puts @val
  end
end

h = Hoge.new("hai!")
h.call_pri_method

# 結果：プライベートメソッドからインスタンス変数は呼べます
