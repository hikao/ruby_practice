#!/usr/bin/ruby

# File.openのブロック付きとブロック無しの
# 挙動の違いを確認する

# No block
# File.openをブロックなしで呼ぶと
# fileオブジェクトが返却される
# fileのclose処理をしないといけない
file = File.open('hoge.txt', 'w')
file.puts("-----No block----")
puts file.class
file.close

# With block
# File.openをブロック付きで呼ぶと
# 自動的にファイルを閉じてくれる
File.open 'hoge.txt', 'w' do |file|
  puts file.class
  file.puts("-----With block-----")
end
