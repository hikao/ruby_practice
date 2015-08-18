#!/usr/bin/ruby

class GenerateInt
  def initialize(val=1)
    @val = val
    begin
      error_method(@val)
	rescue => ex
	  print ex
	end
  end

  def error_method(v)
	p v.class
	begin
      Integer(v)
	  p v
	rescue
	  raise "error_method内で起きた例外"
	end
	
  end
end

gi = GenerateInt.new(3)
gi2 = GenerateInt.new("string")
