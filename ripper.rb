#!/usr/bin/ruby

# about ripper
# Ripper.lex("コードの文字列")で、
# 字句解析結果を返す
require 'ripper'
require 'pp'

code = <<STR
10.times do |n|
  put n
end
STR
pp Ripper.lex(code)
