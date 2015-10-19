#!/usr/bin/ruby

# About robotex

require 'robotex'

robotex = Robotex.new "Crawler"
p robotex.allowed?("http://www.yahoo.co.jp/") # => true
p robotex.allowed?("http://www.facebook.com/") # => true
p robotex.allowed?("http://www.homes.co.jp/") # => true
