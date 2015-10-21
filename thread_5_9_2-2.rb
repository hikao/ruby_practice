#!/usr/bin/ruby

for item in %w(foo bar baz)
  # ブロックの仮引数として渡してあげれば、他のスレッドと共有されない
  Thread.fork item do |val|
    sleep 1

    puts val
  end
end

# 子スレッドの終了を待つ
(Thread.list - [Thread.current]).each &:value

