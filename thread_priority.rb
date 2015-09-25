#!/usr/bin/ruby

# About Thread priority

# 数値が大きいほど優先順位が高い
current = Thread.current
# 確認方法 defaultは0
p current.priority 

current.priority = 2
p current.priority 

# 新たなスレッドを作る
# 優先度は引き継がれる
current.priority = 3
Thread.fork do
  Thread.current.priority # => 3が返るらしいけど再現できず P.216
end
