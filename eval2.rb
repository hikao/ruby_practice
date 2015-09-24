#!/usr/bin/ruby

class Hoge
  attr_reader :hoge
  
  private
  def private_method
    @hoge = 100
  end
end

h = Hoge.new
# instance_evalを使うとプライベートメソッドも呼べる
h.instance_eval do
  private_method
end
p h.hoge # => "100"
