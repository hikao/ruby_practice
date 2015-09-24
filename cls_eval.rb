#!/usr/bin/ruby

class EvalHoge
  @hoge = 10
  class << self
    def cls_method
      p @hoge
    end
  end
end

EvalHoge.cls_method # => 10

# class_evalを使って値変更
EvalHoge.class_eval "@hoge = 5"
EvalHoge.cls_method # => 5

class Hoge
  attr_reader :hoge
  @hoge = 3
end

h = Hoge.new
h.instance_eval do
  @hoge = 100
end
p h.hoge
