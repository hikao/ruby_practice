#!/usr/bin/ruby

fiber = Fiber.new { |first|
  puts first
  second = Fiber.yield('goodbye')
  puts second
  'good bye, again'
}

puts fiber.resume("hello") # => 'goodbye'
puts fiber.resume("hello, again") # => 'good bye, again'
