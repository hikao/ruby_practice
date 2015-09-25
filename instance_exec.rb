#!/usr/bin/ruby

class Hoge
  CONST = "Hoge::Const"
  attr_accessor :hoge
end

CONST = "CONST in Global"
h = Hoge.new
h.instance_eval { @hoge = CONST }
p h.hoge

h.instance_exec {@hoge = CONST }
p h.hoge
