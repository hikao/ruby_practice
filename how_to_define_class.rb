#!/usr/bin/ruby

# class定義式とClass.newの違い
# class定義式は定義式の外側の変数が参照できない
# Class.new do~endは参照できる(ブロックで定義しているので)

val = "hello"

Hoge =Class.new do
  puts val
end

class Klass
  puts val # NameError
end
