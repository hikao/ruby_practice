#!/usr/bin/ruby

# About Struct

Human = Struct.new(:age, :gender)
human = Human.new(25, 'man')
p human.age
p human.gender
human[:age] = 10
human[:gender] = 'woman'
p human.age
p human.gender
p Human.members
p human.members


# 動的にクラスを作る
# 第一引数が文字列の場合は生成されるクラスとみなされる
# 以下でHumanクラスができる
h = Struct.new('Human','age', 'gender')
p h.new.class # => Struct::Human

p hum = h.new('23', 'woman')
p hum.age
p hum.gender
