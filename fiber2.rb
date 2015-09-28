#!/usr/bin/ruby

fiber = Fiber.new { |first|
  puts first
  second = Fiber.yield('goodbye')
  puts second
  'good bye, again'
}

fiber.resume("first dayo")
fiber.resume("second dayo")
