#!/usr/bin/ruby

# read json and parse

require 'json'

json_file_path = "./sample.json"
json_obj = open(json_file_path) do |f|
  JSON.load(f)
end
puts json_obj

puts "======="
hoge = JSON.generate({"foo" => "bar"})
puts hoge
