#!/usr/bin/ruby

def give_me_block
  p "a"
  yield
  p "c"
end

give_me_block do 
  p "b"
end
