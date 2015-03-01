#!/usr/bin/ruby

height = [169,162,180]

len = height.size
total = 0

len.times do |n|
	puts "height is #{height[n]}"
	total += height[n]
end

puts "average is ...#{total/len}"
