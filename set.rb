#!/usr/bin/ruby
#
# about set

require 'set'
p (1..5).to_set

p Set.new(%w(Ruby Pthon Java PHP))

p Set[1,2,3,4,5]

# setオブジェクトへの追加
hoge = (1..5).to_set
hoge << 6
hoge.add(7)
p hoge.delete(11)

hoge2 = Set[8,9,10,11,12]
p hoge.merge(hoge2)

p "要素を選択的に削除したい場合"
fuga = Set[8,9,10,11,12]
p fuga.reject! { |val| val == 1 }   # 該当しなければnilを返す
p fuga.delete_if { |val| val == 1 } # 該当しなければ自身を返す

p "Self#divide"
names = Set.new(%w(Alice Bob Mary Danny Ray Sayla Satuki Tom Kazu))
# アルファベット数が同じもの同士で集合にする
p names.divide { |name| name.length }

p "Self#classify"
# 同じクラス同士でまとめる
set = [4, 4.0, 1.0009, "Ruby", "Python", {a: 0, b:1}, {c: 3, d: 4}, "PHP"].to_set
p set.classify{ |klass| klass.class }
