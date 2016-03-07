#/usr/bin/ruby

class Computer
  attr_accessor :display
  attr_accessor :motherboard
  attr_reader :drives

  def initilize(display=:crt, motherboard="Motherboard.new", drives=[])
    @display = display
    @motherboard = motherboard
    @drives = drives
  end
end
