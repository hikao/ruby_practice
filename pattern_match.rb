#!/usr/bin/ruby

p "Hello, This is a practice of regexp in ruby." =~ /ruby/
p $&


puts "Hello, This is a practice of regexp in ruby.".match(/ruby/)
p $&
