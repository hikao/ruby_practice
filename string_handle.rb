#!/usr/bin/ruby

# handle about String

# cout string
p "abcd".count("a")
p "abcd".count("ab")
p "abcd".count("a-c")

# a-cのうちbは除く
p "abcd".count("a-c", "^b")

# 行ごとに処理
s = "ab\ncd\n"
p s.lines.map(&:chomp)
