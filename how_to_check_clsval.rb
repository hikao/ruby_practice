#!/usr/bin/ruby

module Fuga
  FUGA = "Fuga teisuu"
end

class ClsValConfirm
  include Fuga
  TEISUU = "Thi is teisuu"
  @@cls_val = "cls val"
  def initialize
    @@hoge = "This is a hoge"
  end
end
# @@cls_valが定義されていることがわかる
# でもインスタンスメソッド内で定義されている@@hogeは確認できない
puts "### クラス変数の確認 ###"
puts ClsValConfirm.class_variables
puts "=========="

# 一回クラス変数を呼び出す(initializeメソッドを呼ぶ)
ClsValConfirm.new
# @@cls_valと@@hogeが確認できるようになっている
# 呼び出時点で定義されているクラス変数を取得するからである
puts ClsValConfirm.class_variables

# クラス変数名がわかっている場合は以下のように
# クラス変数が定義されているかどうかを確認できる
puts "### クラス変数が定義されているかの確認 ###"
puts ClsValConfirm.class_variable_defined? '@@hoge' # => true
puts ClsValConfirm.class_variable_defined? '@@fugafuga' # => true

puts "### クラス変数の値を取得する ###"
# class_variable_get '@@hoge'
ClsValConfirm.class_variables.each do |val|
  puts ClsValConfirm.class_variable_get val
end

puts "### クラス内の定数を確認する ###"
puts ClsValConfirm.constants
puts "====自クラスのみの定数を確認する===="
puts ClsValConfirm.constants(false)
ClsValConfirm.constants.each do |const|
  puts ClsValConfirm.const_get const
end
