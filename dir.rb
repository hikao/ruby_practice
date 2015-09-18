#!/usr/bin/ruby

# 現在のディレクトリ表示
puts Dir.pwd

# Dirクラスのもっているメソッド
puts Dir.methods(false)

puts Dir.home
# ls -la的な
# puts Dir.entries(Dir.home)
# 今自分が実行している場所
puts Dir.getwd

puts "================"
# Dirオブジェクトを使った細かな操作
# ディレクトリを開く
dir = Dir.open(Dir.getwd)

# ディレクトリ名
p dir.path
dir.each do |f|
  p f
end
# ディレクトリを閉じる
dir.close
