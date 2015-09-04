#!/usr/bin/ruby

# 汚染されたオブジェクトかどうか調べるために
# Object#tainted?で知ることができる
# 汚染されたオブジェクト=外部からの入力されたオブジェクトのことを指す
# コマンドライン引数や環境変数のこと

puts String.tainted?
a = 1
puts a.tainted?

# 環境変数
puts ENV['HOME'].tainted?
puts ARGV[0].tainted?
