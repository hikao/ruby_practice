#!/usr/bin/ruby

fiber = Fiber.new {
  puts "first"
  Fiber.yield # ここで処理が止まる
  puts "second"
}

fiber.resume
fiber.resume # 続きから処理が走る
