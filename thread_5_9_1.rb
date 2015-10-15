#!/usr/bin/ruby

# パーフェクトRuby 5-9-1

files = %w(array.rb binding.rb block_sample1.rb)

threads = files.map {|file|
  Thread.fork{
    num = File.readlines(file)
  }
}
p threads.map(&:value)
