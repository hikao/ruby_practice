#!/usr/bin/ruby

# block sample

def block_sample
  puts "before yeild"
  yield
  puts "after yeild"
end

# ブロック引数付きメソッドを実行
block_sample do
  puts "yeild is processing."
end

# ブロック引数なしで実行
block_sample
# no block given (yield) (LocalJumpError)
# メソッドの中にyieldがあるのにブロックを渡さないからエラーになる
