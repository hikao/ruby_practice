#!/usr/bin/ruby

for item in %w(foo bar baz)
  Thread.fork do
    sleep 1

    puts item # buzしか出力されない
  end
end

(Thread.list - [Thread.current]).each &:value
