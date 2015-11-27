#!/usr/bin/ruby

# fizzbuzz in Ruby
(1..100).each do |n|
  if n % 15 == 0
    puts "#{n}:fizzbuzzbuz"
  elsif n % 3 == 0
    puts "#{n}:fizz"
  elsif n % 5 == 0
    puts "#{n}:buzz"
  end
end


