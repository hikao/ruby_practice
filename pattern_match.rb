#!/usr/bin/ruby

p "Hello, This is a practice of regexp in ruby." =~ /ruby/
p $&


puts "Hello, This is a practice of regexp in ruby.".match(/ruby/)
p $&

puts '======='

str = "Hi, Ruby! This is funtastic language! isn't it?"
str.match(/language/)

# match前
puts $`
# match後のテキスト
puts $'
# matchしたテキスト自身
puts $&
