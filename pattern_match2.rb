#!/usr/bin/ruby

# pattern matching in using capture

dom = "<div><strong>This is a paractice of capture in Ruby.</strong></div>"

dom =~ /( is .+ capture)/
# キャプチャにマッチした一つ目
puts $1
# マッチしたテキスト
puts $&
