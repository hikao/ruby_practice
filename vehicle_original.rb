#!/usr/bin/ruby

class Vehicle

  def start_engine
    puts "start engine!!"
    puts "BooooN!\n\n\n"
  end

  def stop_engine
    puts "stop engine..."
  end

end


class Car < Vehicle

  new_car = Car.new
  new_car.start_engine
  new_car.stop_engine

end
