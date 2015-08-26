#!/usr/bin/ruby

# block sample2

def block_sample2(message)
  puts message
  puts "before yeild"
  # ブロックがあればyieldを実行する
  yield if block_given?
  puts "after yeild"
end

# ブロック引数付きメソッドを実行
block_sample2("-----This is method with block-----") do
  puts "yeild is processing."
end

# ブロック引数なしで実行
block_sample2("-----No block method-----")
# no block given (yield) (LocalJumpError)
# メソッドの中にyieldがあるのにブロックを渡さないからエラーになる
