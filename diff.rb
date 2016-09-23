#!/usr/bin/ruby
print (File.read(ARGV[0]).split("\n") - File.read(ARGV[1]).split("\n")).join("\n")
