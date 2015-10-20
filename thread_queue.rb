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

# 全てのキューが処理されるまで待つ
sleep 2 until queue.empty?

# workersの中身を確認
p workers.map(&:status)

6.times do |t|
  queue.enq -> {
    sleep 1
  }
end

# workersの中身を確認
p workers.map(&:status)

# 全てのキューが処理されるまで待つ
sleep 2 until queue.empty?
