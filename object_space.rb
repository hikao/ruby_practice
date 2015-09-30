#!/usr/bin/ruby

# About ObjectSpace

# 定義済みのクラスを確認する
#ObjectSpace.each_object(Class) { |c| p c }

a = [1, 2, 3, 4]
p obj_id = a.object_id # => 70339913038860

p ObjectSpace._id2ref(obj_id) # => [1, 2, 3, 4]

# ObjectSpace.#define_finalizer
# GCや処理が完了した時に実行させる処理を書ける
o = Object.new
ObjectSpace.define_finalizer(o, proc { p 'finalize' })
