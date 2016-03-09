#!/usr/bin/ruby

# about Proc

n = 0

plusone = Proc.new do 
 puts n = n + 1  
end

plusone.call
plusone.call
plusone.call
plusone.call
