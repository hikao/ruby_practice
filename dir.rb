#!/usr/bin/ruby

# 現在のディレクトリ表示
puts Dir.pwd

# Dirクラスのもっているメソッド
puts Dir.methods(false)

puts Dir.home
# ls -la的な
puts Dir.entries(Dir.home)
# 今自分が実行している場所
puts Dir.getwd
