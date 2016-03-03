#!/usr/bin/ruby


class Tool
  def use
    puts "Picks up #{@color} #{self.class.to_s}"
  end
 
  def initialize(color)
    @color = color
  end
end

class Hammer < Tool
  def initialize(color)
    super(color << " Hammer")
  end

  def use
    super
  end

  def self.to_s
    "\nBam bam bam"
  end
end

Hammer.new("red").use

# 出力例
# Picks up red Hammer
# Bam bam bam
