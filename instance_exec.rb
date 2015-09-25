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

class EvalTarget
  CONST_VAL = "EvalTarget::CONST"
  attr_accessor :instance_val
end

CONST_VAL = "CONST"

e1 = EvalTarget.new

e1.instance_eval { @instance_val = CONST_VAL }
p e1.instance_val
