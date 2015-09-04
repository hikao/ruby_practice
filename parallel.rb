#!/usr/bin/ruby

require 'parallel'
# about Parallel

class ParallelSample
  attr_accessor :ary, :thread
  def initialize(ary, thread)
    @ary = ary
	@thread = thread
  end
  def run
    Parallel.each(@ary, in_threads: @thread) do |i|
      p i
    end
  end
end

a = %w(1,2,3,4,5,6,7,8,9,10)
obj = ParallelSample.new(a, 3)
obj.run
