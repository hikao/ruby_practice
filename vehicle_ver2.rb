#!/usr/bin/ruby

# vehicle_originalの改良版
class Vehicle
  # can code about abstract method.
  # ex. contorl
  
end

class Engine

  def start_engine
    puts "start engine!!"
    puts "BooooN!\n\n\n"
  end

  def stop_engine
    puts "stop engine..."
  end

end

class Car < Vehicle

  def initialize
    @engine = Engine.new
  end

  def start_drive
    @engine.start_engine
    @engine.stop_engine
  end

end

Car.new.start_drive
