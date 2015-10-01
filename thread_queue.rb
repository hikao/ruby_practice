#!/usr/bin/ruby

# Use queue in thread
# キューが空の時にpopすると新しいキューにデータが追加されるまで
# 呼び出し元はブロックされる。

require 'thread'

queue = Queue.new

workers = 3.times.map { |t|
  Thread.fork{
    while req = queue.deq
      puts "Worker #{t} is processing"
      req.call
    end
  }
}

10.times do |t|
  queue.enq -> {
    sleep 1
  }
end

sleep 1 until queue.empty?
