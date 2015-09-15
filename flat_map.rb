#!/usr/bin/ruby

# flat_mapの練習
hoge_ary = [{a: "1"}, {b: "2"}, {c: "3"}]
hash = {}

fuga = hoge_ary.flat_map{ |h| hash.merge!(h) }
fuga = hoge_ary.flat_map{ |h| p h }
p fuga
