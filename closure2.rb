#!/usr/in/ruby

str = 'top level'
top_level_proc = Proc.new { str }

puts top_level_proc.call

str += 'append hoge'
puts top_level_proc.call
