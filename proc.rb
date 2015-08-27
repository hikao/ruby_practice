#!/usr/bin/ruby

# about Proc

hoge = Proc.new do
  puts "call by proc"
end

hoge.call
