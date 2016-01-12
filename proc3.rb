#!/usr/bin/ruby

hello = proc do |hoge|
  puts "this is #{hoge}"
end

hello.call("hogehoge")

